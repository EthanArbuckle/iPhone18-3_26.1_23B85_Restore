@interface MFBasicMessageDataSection
- (void)dealloc;
- (void)setData:(id)data;
@end

@implementation MFBasicMessageDataSection

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFBasicMessageDataSection;
  [(MFBasicMessageDataSection *)&v2 dealloc];
}

- (void)setData:(id)data
{
  v4 = MEMORY[0x277D24F08];
  dataCopy = data;
  v6 = [[v4 alloc] initWithData:dataCopy];

  dataHolder = self->_dataHolder;
  self->_dataHolder = v6;
}

@end