@interface STCoreOrganization
+ (Class)internalClassForSerializableClassName:(id)a3;
+ (id)fetchRequest;
@end

@implementation STCoreOrganization

+ (Class)internalClassForSerializableClassName:(id)a3
{
  v3 = internalClassForSerializableClassName__oneTime;
  v4 = a3;
  if (v3 != -1)
  {
    +[STCoreOrganization internalClassForSerializableClassName:];
  }

  v5 = [internalClassForSerializableClassName__mapping objectForKey:v4];

  return v5;
}

void __60__STCoreOrganization_internalClassForSerializableClassName___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:9];
  v1 = internalClassForSerializableClassName__mapping;
  internalClassForSerializableClassName__mapping = v0;

  v2 = internalClassForSerializableClassName__mapping;
  v3 = objc_opt_class();
  v4 = +[STLocalOrganization serializableClassName];
  [v2 setObject:v3 forKey:v4];

  v5 = internalClassForSerializableClassName__mapping;
  v6 = objc_opt_class();
  v7 = +[STiCloudOrganization serializableClassName];
  [v5 setObject:v6 forKey:v7];

  v8 = internalClassForSerializableClassName__mapping;
  v9 = objc_opt_class();
  v10 = +[STFamilyOrganization serializableClassName];
  [v8 setObject:v9 forKey:v10];
}

+ (id)fetchRequest
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___STCoreOrganization;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

@end