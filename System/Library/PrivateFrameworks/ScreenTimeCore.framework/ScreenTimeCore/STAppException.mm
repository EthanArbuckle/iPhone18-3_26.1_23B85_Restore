@interface STAppException
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error;
+ (id)fetchRequest;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (NSString)description;
- (id)computeUniqueIdentifier;
- (id)dictionaryRepresentation;
- (void)didChangeValueForKey:(id)key;
@end

@implementation STAppException

+ (id)fetchRequest
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___STAppException;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  if (([keyCopy isEqualToString:@"bundleIdentifier"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"familyOrgSettings") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"adamID") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"distributorID") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"ratingValue"))
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
  }

  v5.receiver = self;
  v5.super_class = STAppException;
  [(STAppException *)&v5 didChangeValueForKey:keyCopy];
}

- (id)computeUniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  serializableClassName = [objc_opt_class() serializableClassName];
  bundleIdentifier = [(STAppException *)self bundleIdentifier];
  adamID = [(STAppException *)self adamID];
  ratingValue = [(STAppException *)self ratingValue];
  distributorID = [(STAppException *)self distributorID];
  familyOrgSettings = [(STAppException *)self familyOrgSettings];
  uniqueIdentifier = [familyOrgSettings uniqueIdentifier];
  v11 = [v3 stringWithFormat:@"%@:%@-%llu-%llu-%@-%@", serializableClassName, bundleIdentifier, adamID, ratingValue, distributorID, uniqueIdentifier];

  return v11;
}

- (id)dictionaryRepresentation
{
  v12.receiver = self;
  v12.super_class = STAppException;
  dictionaryRepresentation = [(STUniquedManagedObject *)&v12 dictionaryRepresentation];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[STAppException adamID](self, "adamID")}];
  [dictionaryRepresentation setObject:v4 forKeyedSubscript:@"adamID"];

  bundleIdentifier = [(STAppException *)self bundleIdentifier];
  [dictionaryRepresentation setObject:bundleIdentifier forKeyedSubscript:@"bundleIdentifier"];

  distributorID = [(STAppException *)self distributorID];
  [dictionaryRepresentation setObject:distributorID forKeyedSubscript:@"distributorID"];

  familyOrgSettings = [(STAppException *)self familyOrgSettings];
  uniqueIdentifier = [familyOrgSettings uniqueIdentifier];
  [dictionaryRepresentation setObject:uniqueIdentifier forKeyedSubscript:@"familyOrgSettings"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[STAppException ratingValue](self, "ratingValue")}];
  [dictionaryRepresentation setObject:v9 forKeyedSubscript:@"ratingValue"];

  v10 = [dictionaryRepresentation copy];

  return v10;
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"adamID"];
  -[STAppException setAdamID:](self, "setAdamID:", [v5 unsignedIntValue]);
  v6 = [representationCopy objectForKeyedSubscript:@"bundleIdentifier"];
  [(STAppException *)self setBundleIdentifier:v6];

  v7 = [representationCopy objectForKeyedSubscript:@"distributorID"];
  [(STAppException *)self setDistributorID:v7];

  v8 = [representationCopy objectForKeyedSubscript:@"ratingValue"];
  -[STAppException setRatingValue:](self, "setRatingValue:", [v8 unsignedIntValue]);
  v9 = [representationCopy objectForKeyedSubscript:@"familyOrgSettings"];

  v10 = +[STFamilyOrganizationSettings fetchRequest];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uniqueIdentifier", v9];
  [v10 setPredicate:v11];

  v15 = 0;
  v12 = [v10 execute:&v15];
  firstObject = [v12 firstObject];
  [(STAppException *)self setFamilyOrgSettings:firstObject];

  return 1;
}

- (NSString)description
{
  dictionaryRepresentation = [(STAppException *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error
{
  contextCopy = context;
  v9 = [representation objectForKeyedSubscript:@"uniqueIdentifier"];
  fetchRequest = [self fetchRequest];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uniqueIdentifier", v9];
  [fetchRequest setPredicate:v11];

  v12 = [fetchRequest execute:error];
  v13 = v12;
  if (v12)
  {
    firstObject = [v12 firstObject];
    if (!firstObject)
    {
      firstObject = [[STAppException alloc] initWithContext:contextCopy];
    }
  }

  else
  {
    v15 = +[STLog screentime];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [STAppException fetchOrCreateWithDictionaryRepresentation:v15 inContext:? error:?];
    }

    firstObject = 0;
  }

  return firstObject;
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