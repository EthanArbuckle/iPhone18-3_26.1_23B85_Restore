@interface TSWPAttachment
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)isEqual:(id)equal;
- (TSWPAttachment)initWithContext:(id)context;
- (id)copyWithContext:(id)context;
- (id)topLevelAttachment;
@end

@implementation TSWPAttachment

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"It is illegal to instantiate TSWPAttachment; it is abstract" userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___TSWPAttachment;
  return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
}

- (TSWPAttachment)initWithContext:(id)context
{
  v4.receiver = self;
  v4.super_class = TSWPAttachment;
  return [(TSPObject *)&v4 initWithContext:context];
}

- (id)copyWithContext:(id)context
{
  v4 = [objc_opt_class() allocWithZone:{-[TSWPAttachment zone](self, "zone")}];

  return [v4 initWithContext:context];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (id)topLevelAttachment
{
  selfCopy = self;
  if (self)
  {
    while ([objc_msgSend(selfCopy "parentStorage")])
    {
      v3 = [objc_msgSend(selfCopy "parentStorage")];
      objc_opt_class();
      parentStorage = [selfCopy parentStorage];
      if (v3 == 2)
      {
        [parentStorage owningAttachment];

        return TSUDynamicCast();
      }

      [objc_msgSend(parentStorage "parentInfo")];
      selfCopy = TSUDynamicCast();
      if (!selfCopy)
      {
        return selfCopy;
      }
    }
  }

  return selfCopy;
}

@end