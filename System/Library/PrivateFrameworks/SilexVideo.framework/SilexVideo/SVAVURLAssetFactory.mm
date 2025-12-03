@interface SVAVURLAssetFactory
- (SVAVURLAssetFactory)initWithOptions:(id)options;
- (id)createURLAssetWithURL:(id)l;
@end

@implementation SVAVURLAssetFactory

- (SVAVURLAssetFactory)initWithOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = SVAVURLAssetFactory;
  v5 = [(SVAVURLAssetFactory *)&v9 init];
  if (v5)
  {
    v6 = [optionsCopy copy];
    options = v5->_options;
    v5->_options = v6;
  }

  return v5;
}

- (id)createURLAssetWithURL:(id)l
{
  v4 = MEMORY[0x277CE6650];
  lCopy = l;
  v6 = [v4 alloc];
  options = [(SVAVURLAssetFactory *)self options];
  v8 = [v6 initWithURL:lCopy options:options];

  return v8;
}

@end