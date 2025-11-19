@interface TSWPSmartField
+ (id)allocWithZone:(_NSZone *)a3;
- (TSWPSmartField)initWithContext:(id)a3;
- (_NSRange)range;
- (id)copyWithContext:(id)a3;
- (void)dealloc;
@end

@implementation TSWPSmartField

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"It is illegal to instantiate TSWPSmartField; it is abstract" userInfo:0]);
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___TSWPSmartField;
  return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
}

- (TSWPSmartField)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSWPSmartField;
  return [(TSPObject *)&v4 initWithContext:a3];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSWPSmartField;
  [(TSWPSmartField *)&v2 dealloc];
}

- (id)copyWithContext:(id)a3
{
  v4 = [objc_opt_class() allocWithZone:{-[TSWPSmartField zone](self, "zone")}];

  return [v4 initWithContext:a3];
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