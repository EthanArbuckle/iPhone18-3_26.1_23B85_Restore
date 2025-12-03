@interface TSWPSmartField
+ (id)allocWithZone:(_NSZone *)zone;
- (TSWPSmartField)initWithContext:(id)context;
- (_NSRange)range;
- (id)copyWithContext:(id)context;
- (void)dealloc;
@end

@implementation TSWPSmartField

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"It is illegal to instantiate TSWPSmartField; it is abstract" userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___TSWPSmartField;
  return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
}

- (TSWPSmartField)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSWPSmartField;
  return [(TSPObject *)&v4 initWithContext:context];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSWPSmartField;
  [(TSWPSmartField *)&v2 dealloc];
}

- (id)copyWithContext:(id)context
{
  v4 = [objc_opt_class() allocWithZone:{-[TSWPSmartField zone](self, "zone")}];

  return [v4 initWithContext:context];
}

- (_NSRange)range
{
  v3 = [(TSWPStorage *)[(TSWPSmartField *)self parentStorage] attributeArrayForKind:[(TSWPSmartField *)self attributeArrayKind]];
  if (v3 && (v4 = v3, Object = TSWPAttributeArray::findObject(v3, self, self->_lastTableIndex), self->_lastTableIndex = Object, Object != 0x7FFFFFFFFFFFFFFFLL))
  {

    v6 = TSWPAttributeArray::rangeForAttributeIndex(v4, Object);
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0;
  }

  result.length = v7;
  result.location = v6;
  return result;
}

@end