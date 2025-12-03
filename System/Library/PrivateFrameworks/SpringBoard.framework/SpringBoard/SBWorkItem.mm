@interface SBWorkItem
- (SBWorkItem)initWithWork:(id)work;
@end

@implementation SBWorkItem

- (SBWorkItem)initWithWork:(id)work
{
  workCopy = work;
  v11.receiver = self;
  v11.super_class = SBWorkItem;
  v5 = [(SBWorkItem *)&v11 init];
  if (v5)
  {
    date = [MEMORY[0x277CBEAA8] date];
    creationDate = v5->_creationDate;
    v5->_creationDate = date;

    v8 = [workCopy copy];
    workBlock = v5->_workBlock;
    v5->_workBlock = v8;
  }

  return v5;
}

@end