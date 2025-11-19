@interface SSLogFileOptions
- (SSLogFileOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation SSLogFileOptions

- (SSLogFileOptions)init
{
  v3.receiver = self;
  v3.super_class = SSLogFileOptions;
  result = [(SSLogFileOptions *)&v3 init];
  if (result)
  {
    *&result->_maxNumberOfLogFiles = xmmword_1D4B38E30;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSLogFileOptions;
  [(SSLogFileOptions *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[1] = [(NSString *)self->_directoryPath copyWithZone:a3];
  v5[2] = [(NSString *)self->_fileName copyWithZone:a3];
  v5[3] = self->_maxNumberOfLogFiles;
  v5[4] = self->_maxSizeInBytes;
  return v5;
}

@end