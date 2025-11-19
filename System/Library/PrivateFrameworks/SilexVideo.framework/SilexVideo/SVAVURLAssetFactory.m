@interface SVAVURLAssetFactory
- (SVAVURLAssetFactory)initWithOptions:(id)a3;
- (id)createURLAssetWithURL:(id)a3;
@end

@implementation SVAVURLAssetFactory

- (SVAVURLAssetFactory)initWithOptions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SVAVURLAssetFactory;
  v5 = [(SVAVURLAssetFactory *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    options = v5->_options;
    v5->_options = v6;
  }

  return v5;
}

- (id)createURLAssetWithURL:(id)a3
{
  v4 = MEMORY[0x277CE6650];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(SVAVURLAssetFactory *)self options];
  v8 = [v6 initWithURL:v5 options:v7];

  return v8;
}

@end