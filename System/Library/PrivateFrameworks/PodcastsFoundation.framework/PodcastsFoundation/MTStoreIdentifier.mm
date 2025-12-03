@interface MTStoreIdentifier
+ (BOOL)isEmptyNumber:(id)number;
+ (id)adamIdNumberFromStoreId:(int64_t)id;
+ (id)identifierWithFeedUrl:(id)url;
+ (id)identifierWithFeedUrl:(id)url storeIdentifier:(id)identifier;
+ (id)validatedIdNumberFromStoreId:(int64_t)id;
+ (int64_t)adamIdFromSerpentId:(int64_t)id;
+ (int64_t)serpentIdFromAdamId:(int64_t)id;
- (MTStoreIdentifier)initWithFeedUrl:(id)url storeIdentifier:(id)identifier;
@end

@implementation MTStoreIdentifier

- (MTStoreIdentifier)initWithFeedUrl:(id)url storeIdentifier:(id)identifier
{
  urlCopy = url;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MTStoreIdentifier;
  v8 = [(MTStoreIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTStoreIdentifier *)v8 setFeedUrl:urlCopy];
    [(MTStoreIdentifier *)v9 setStoreIdentifier:identifierCopy];
  }

  return v9;
}

+ (id)identifierWithFeedUrl:(id)url
{
  urlCopy = url;
  v4 = [[MTStoreIdentifier alloc] initWithFeedUrl:urlCopy];

  return v4;
}

+ (id)identifierWithFeedUrl:(id)url storeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  urlCopy = url;
  v7 = [[MTStoreIdentifier alloc] initWithFeedUrl:urlCopy storeIdentifier:identifierCopy];

  return v7;
}

+ (int64_t)adamIdFromSerpentId:(int64_t)id
{
  v3 = 1000000000000;
  if (id <= 1000000000000)
  {
    v3 = 0;
  }

  return id - v3;
}

+ (id)adamIdNumberFromStoreId:(int64_t)id
{
  if ([self isNotEmpty:?])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:id];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)serpentIdFromAdamId:(int64_t)id
{
  v3 = 1000000000000;
  if (id >= 1000000000000)
  {
    v3 = 0;
  }

  return v3 + id;
}

+ (id)validatedIdNumberFromStoreId:(int64_t)id
{
  if ([self isNotEmpty:?])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:id];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isEmptyNumber:(id)number
{
  longLongValue = [number longLongValue];

  return [self isEmpty:longLongValue];
}

@end