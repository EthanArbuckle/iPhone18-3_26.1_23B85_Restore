@interface OS_mdns_object
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)description;
- (id)redactedDescription;
- (void)dealloc;
@end

@implementation OS_mdns_object

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  isa = self[2].super.super.isa;
  if (isa != *(equal + 2))
  {
    return 0;
  }

  v7 = *(isa + 4);
  if (!v7)
  {
    return 0;
  }

  return v7(self, equal);
}

- (id)redactedDescription
{
  v2 = _mdns_obj_copy_description_as_cfstring(self);

  return v2;
}

- (NSString)debugDescription
{
  v2 = _mdns_obj_copy_description_as_cfstring(self);

  return v2;
}

- (NSString)description
{
  v2 = _mdns_obj_copy_description_as_cfstring(self);

  return v2;
}

- (void)dealloc
{
  for (i = self[2].super.super.isa; i; i = *i)
  {
    v4 = *(i + 5);
    if (v4)
    {
      v4(self, a2);
    }
  }

  v5.receiver = self;
  v5.super_class = OS_mdns_object;
  [(OS_mdns_object *)&v5 dealloc];
}

@end