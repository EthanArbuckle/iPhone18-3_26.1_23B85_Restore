@interface TSWPAttachment
+ (id)allocWithZone:(_NSZone *)a3;
- (BOOL)isEqual:(id)a3;
- (TSWPAttachment)initWithContext:(id)a3;
- (id)copyWithContext:(id)a3;
- (id)topLevelAttachment;
@end

@implementation TSWPAttachment

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"It is illegal to instantiate TSWPAttachment; it is abstract" userInfo:0]);
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___TSWPAttachment;
  return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
}

- (TSWPAttachment)initWithContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSWPAttachment;
  return [(TSPObject *)&v4 initWithContext:a3];
}

- (id)copyWithContext:(id)a3
{
  v4 = [objc_opt_class() allocWithZone:{-[TSWPAttachment zone](self, "zone")}];

  return [v4 initWithContext:a3];
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (id)topLevelAttachment
{
  v2 = self;
  if (self)
  {
    while ([objc_msgSend(v2 "parentStorage")])
    {
      v3 = [objc_msgSend(v2 "parentStorage")];
      objc_opt_class();
      v4 = [v2 parentStorage];
      if (v3 == 2)
      {
        [v4 owningAttachment];

        return TSUDynamicCast();
      }

      [objc_msgSend(v4 "parentInfo")];
      v2 = TSUDynamicCast();
      if (!v2)
      {
        return v2;
      }
    }
  }

  return v2;
}

@end