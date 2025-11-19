@interface STAppException
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)fetchRequest;
- (BOOL)updateWithDictionaryRepresentation:(id)a3;
- (NSString)description;
- (id)computeUniqueIdentifier;
- (id)dictionaryRepresentation;
- (void)didChangeValueForKey:(id)a3;
@end

@implementation STAppException

+ (id)fetchRequest
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___STAppException;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (void)didChangeValueForKey:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"bundleIdentifier"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"familyOrgSettings") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"adamID") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"distributorID") & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"ratingValue"))
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
  }

  v5.receiver = self;
  v5.super_class = STAppException;
  [(STAppException *)&v5 didChangeValueForKey:v4];
}

- (id)computeUniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() serializableClassName];
  v5 = [(STAppException *)self bundleIdentifier];
  v6 = [(STAppException *)self adamID];
  v7 = [(STAppException *)self ratingValue];
  v8 = [(STAppException *)self distributorID];
  v9 = [(STAppException *)self familyOrgSettings];
  v10 = [v9 uniqueIdentifier];
  v11 = [v3 stringWithFormat:@"%@:%@-%llu-%llu-%@-%@", v4, v5, v6, v7, v8, v10];

  return v11;
}

- (id)dictionaryRepresentation
{
  v12.receiver = self;
  v12.super_class = STAppException;
  v3 = [(STUniquedManagedObject *)&v12 dictionaryRepresentation];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[STAppException adamID](self, "adamID")}];
  [v3 setObject:v4 forKeyedSubscript:@"adamID"];

  v5 = [(STAppException *)self bundleIdentifier];
  [v3 setObject:v5 forKeyedSubscript:@"bundleIdentifier"];

  v6 = [(STAppException *)self distributorID];
  [v3 setObject:v6 forKeyedSubscript:@"distributorID"];

  v7 = [(STAppException *)self familyOrgSettings];
  v8 = [v7 uniqueIdentifier];
  [v3 setObject:v8 forKeyedSubscript:@"familyOrgSettings"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[STAppException ratingValue](self, "ratingValue")}];
  [v3 setObject:v9 forKeyedSubscript:@"ratingValue"];

  v10 = [v3 copy];

  return v10;
}

- (BOOL)updateWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"adamID"];
  -[STAppException setAdamID:](self, "setAdamID:", [v5 unsignedIntValue]);
  v6 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
  [(STAppException *)self setBundleIdentifier:v6];

  v7 = [v4 objectForKeyedSubscript:@"distributorID"];
  [(STAppException *)self setDistributorID:v7];

  v8 = [v4 objectForKeyedSubscript:@"ratingValue"];
  -[STAppException setRatingValue:](self, "setRatingValue:", [v8 unsignedIntValue]);
  v9 = [v4 objectForKeyedSubscript:@"familyOrgSettings"];

  v10 = +[STFamilyOrganizationSettings fetchRequest];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uniqueIdentifier", v9];
  [v10 setPredicate:v11];

  v15 = 0;
  v12 = [v10 execute:&v15];
  v13 = [v12 firstObject];
  [(STAppException *)self setFamilyOrgSettings:v13];

  return 1;
}

- (NSString)description
{
  v2 = [(STAppException *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 objectForKeyedSubscript:@"uniqueIdentifier"];
  v10 = [a1 fetchRequest];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uniqueIdentifier", v9];
  [v10 setPredicate:v11];

  v12 = [v10 execute:a5];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 firstObject];
    if (!v14)
    {
      v14 = [[STAppException alloc] initWithContext:v8];
    }
  }

  else
  {
    v15 = +[STLog screentime];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [STAppException fetchOrCreateWithDictionaryRepresentation:v15 inContext:? error:?];
    }

    v14 = 0;
  }

  return v14;
}

+ (void)fetchOrCreateWithDictionaryRepresentation:(os_log_t)log inContext:error:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  v3 = "+[STAppException fetchOrCreateWithDictionaryRepresentation:inContext:error:]";
  _os_log_error_impl(&dword_1B831F000, log, OS_LOG_TYPE_ERROR, "%{public}s: app exceptions empty", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end