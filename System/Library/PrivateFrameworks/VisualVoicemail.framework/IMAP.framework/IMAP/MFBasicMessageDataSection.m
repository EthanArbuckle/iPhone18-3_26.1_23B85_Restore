@interface MFBasicMessageDataSection
- (void)dealloc;
- (void)setData:(id)a3;
@end

@implementation MFBasicMessageDataSection

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFBasicMessageDataSection;
  [(MFBasicMessageDataSection *)&v2 dealloc];
}

- (void)setData:(id)a3
{
  v4 = MEMORY[0x277D24F08];
  v5 = a3;
  v6 = [[v4 alloc] initWithData:v5];

  dataHolder = self->_dataHolder;
  self->_dataHolder = v6;
}

@end