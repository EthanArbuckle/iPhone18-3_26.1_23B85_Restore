@interface SBWorkItem
- (SBWorkItem)initWithWork:(id)a3;
@end

@implementation SBWorkItem

- (SBWorkItem)initWithWork:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBWorkItem;
  v5 = [(SBWorkItem *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    creationDate = v5->_creationDate;
    v5->_creationDate = v6;

    v8 = [v4 copy];
    workBlock = v5->_workBlock;
    v5->_workBlock = v8;
  }

  return v5;
}

@end