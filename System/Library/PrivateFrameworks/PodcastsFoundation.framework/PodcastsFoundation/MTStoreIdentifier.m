@interface MTStoreIdentifier
+ (BOOL)isEmptyNumber:(id)a3;
+ (id)adamIdNumberFromStoreId:(int64_t)a3;
+ (id)identifierWithFeedUrl:(id)a3;
+ (id)identifierWithFeedUrl:(id)a3 storeIdentifier:(id)a4;
+ (id)validatedIdNumberFromStoreId:(int64_t)a3;
+ (int64_t)adamIdFromSerpentId:(int64_t)a3;
+ (int64_t)serpentIdFromAdamId:(int64_t)a3;
- (MTStoreIdentifier)initWithFeedUrl:(id)a3 storeIdentifier:(id)a4;
@end

@implementation MTStoreIdentifier

- (MTStoreIdentifier)initWithFeedUrl:(id)a3 storeIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MTStoreIdentifier;
  v8 = [(MTStoreIdentifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MTStoreIdentifier *)v8 setFeedUrl:v6];
    [(MTStoreIdentifier *)v9 setStoreIdentifier:v7];
  }

  return v9;
}

+ (id)identifierWithFeedUrl:(id)a3
{
  v3 = a3;
  v4 = [[MTStoreIdentifier alloc] initWithFeedUrl:v3];

  return v4;
}

+ (id)identifierWithFeedUrl:(id)a3 storeIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MTStoreIdentifier alloc] initWithFeedUrl:v6 storeIdentifier:v5];

  return v7;
}

+ (int64_t)adamIdFromSerpentId:(int64_t)a3
{
  v3 = 1000000000000;
  if (a3 <= 1000000000000)
  {
    v3 = 0;
  }

  return a3 - v3;
}

+ (id)adamIdNumberFromStoreId:(int64_t)a3
{
  if ([a1 isNotEmpty:?])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)serpentIdFromAdamId:(int64_t)a3
{
  v3 = 1000000000000;
  if (a3 >= 1000000000000)
  {
    v3 = 0;
  }

  return v3 + a3;
}

+ (id)validatedIdNumberFromStoreId:(int64_t)a3
{
  if ([a1 isNotEmpty:?])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isEmptyNumber:(id)a3
{
  v4 = [a3 longLongValue];

  return [a1 isEmpty:v4];
}

@end