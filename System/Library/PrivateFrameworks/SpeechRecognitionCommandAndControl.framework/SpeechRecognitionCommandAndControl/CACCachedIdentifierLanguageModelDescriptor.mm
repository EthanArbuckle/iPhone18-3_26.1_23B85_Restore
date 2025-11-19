@interface CACCachedIdentifierLanguageModelDescriptor
- (void)dealloc;
- (void)setRxLanguageObject:(__RXLanguageObject *)a3;
@end

@implementation CACCachedIdentifierLanguageModelDescriptor

- (void)dealloc
{
  RXRelease(self->_rxLanguageObject);
  v3.receiver = self;
  v3.super_class = CACCachedIdentifierLanguageModelDescriptor;
  [(CACCachedIdentifierLanguageModelDescriptor *)&v3 dealloc];
}

- (void)setRxLanguageObject:(__RXLanguageObject *)a3
{
  rxLanguageObject = self->_rxLanguageObject;
  if (a3)
  {
    CFRetain(a3);
  }

  self->_rxLanguageObject = a3;

  RXRelease(rxLanguageObject);
}

@end