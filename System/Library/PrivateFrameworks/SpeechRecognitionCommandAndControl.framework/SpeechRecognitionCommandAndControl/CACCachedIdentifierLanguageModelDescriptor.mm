@interface CACCachedIdentifierLanguageModelDescriptor
- (void)dealloc;
- (void)setRxLanguageObject:(__RXLanguageObject *)object;
@end

@implementation CACCachedIdentifierLanguageModelDescriptor

- (void)dealloc
{
  RXRelease(self->_rxLanguageObject);
  v3.receiver = self;
  v3.super_class = CACCachedIdentifierLanguageModelDescriptor;
  [(CACCachedIdentifierLanguageModelDescriptor *)&v3 dealloc];
}

- (void)setRxLanguageObject:(__RXLanguageObject *)object
{
  rxLanguageObject = self->_rxLanguageObject;
  if (object)
  {
    CFRetain(object);
  }

  self->_rxLanguageObject = object;

  RXRelease(rxLanguageObject);
}

@end