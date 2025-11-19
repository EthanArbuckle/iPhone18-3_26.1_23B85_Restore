@interface SKDBaseJob
- (SKDBaseJob)initWithName:(id)a3 version:(id)a4 pipelines:(id)a5;
- (SKDEventLogger)logger;
@end

@implementation SKDBaseJob

- (SKDBaseJob)initWithName:(id)a3 version:(id)a4 pipelines:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = SKDBaseJob;
  v11 = [(SKDBaseJob *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_version, a4);
    v13 = [v8 copy];
    name = v12->_name;
    v12->_name = v13;

    v15 = [v10 copy];
    pipelines = v12->_pipelines;
    v12->_pipelines = v15;
  }

  return v12;
}

- (SKDEventLogger)logger
{
  logger = self->_logger;
  if (!logger)
  {
    v4 = [SKDPipelineLogger alloc];
    v5 = [objc_opt_class() description];
    v6 = [(SKDPipelineLogger *)v4 initWithDomain:v5];

    [(SKDBaseJob *)self setLogger:v6];
    logger = self->_logger;
  }

  return logger;
}

@end