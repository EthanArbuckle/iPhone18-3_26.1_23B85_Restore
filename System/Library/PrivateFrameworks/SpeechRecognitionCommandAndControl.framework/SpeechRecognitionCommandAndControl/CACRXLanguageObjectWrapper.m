@interface CACRXLanguageObjectWrapper
- (CACRXLanguageObjectWrapper)initWithRXLanguageObject:(__RXLanguageObject *)a3;
- (void)dealloc;
@end

@implementation CACRXLanguageObjectWrapper

- (CACRXLanguageObjectWrapper)initWithRXLanguageObject:(__RXLanguageObject *)a3
{
  v7.receiver = self;
  v7.super_class = CACRXLanguageObjectWrapper;
  v4 = [(CACRXLanguageObjectWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_rxLanguageObject = a3;
    CFRetain(a3);
  }

  return v5;
}

- (void)dealloc
{
  RXRelease(self->_rxLanguageObject);
  v3.receiver = self;
  v3.super_class = CACRXLanguageObjectWrapper;
  [(CACRXLanguageObjectWrapper *)&v3 dealloc];
}

@end