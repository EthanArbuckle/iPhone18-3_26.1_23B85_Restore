@interface VPANVirtualCard
+ (id)anyInDatabase:(id)database withVirtualCardIdentifier:(id)identifier;
+ (id)insertVPANVirtualCardMetadataWithIdentifier:(id)identifier cardholderNameFromSafari:(id)safari inDatabase:(id)database;
+ (id)insertVPANVirtualCardMetadataWithIdentifier:(id)identifier dateLastUsedBySafari:(id)safari inDatabase:(id)database;
+ (void)updateVirtualCard:(id)card fromDatabase:(id)database;
- (VPANVirtualCard)initWithVirtualCardIdentifier:(id)identifier inDatabase:(id)database;
- (void)updateCardholderNameFromSafari:(id)safari;
- (void)updateDateLastUsedBySafari:(id)safari;
- (void)updateVirtualCard:(id)card;
@end

@implementation VPANVirtualCard

- (VPANVirtualCard)initWithVirtualCardIdentifier:(id)identifier inDatabase:(id)database
{
  databaseCopy = database;
  identifierCopy = identifier;
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObjectOrNull:identifierCopy forKey:@"a"];

  v9 = [(SQLiteEntity *)self initWithPropertyValues:v8 inDatabase:databaseCopy];
  return v9;
}

+ (id)insertVPANVirtualCardMetadataWithIdentifier:(id)identifier dateLastUsedBySafari:(id)safari inDatabase:(id)database
{
  databaseCopy = database;
  safariCopy = safari;
  identifierCopy = identifier;
  v11 = [[self alloc] initWithVirtualCardIdentifier:identifierCopy inDatabase:databaseCopy];

  [v11 updateDateLastUsedBySafari:safariCopy];

  return v11;
}

+ (id)insertVPANVirtualCardMetadataWithIdentifier:(id)identifier cardholderNameFromSafari:(id)safari inDatabase:(id)database
{
  databaseCopy = database;
  safariCopy = safari;
  identifierCopy = identifier;
  v11 = [[self alloc] initWithVirtualCardIdentifier:identifierCopy inDatabase:databaseCopy];

  [v11 updateCardholderNameFromSafari:safariCopy];

  return v11;
}

+ (id)anyInDatabase:(id)database withVirtualCardIdentifier:(id)identifier
{
  databaseCopy = database;
  v7 = [self _predicateForVirtualCardIdentifier:identifier];
  v8 = [self anyInDatabase:databaseCopy predicate:v7];

  return v8;
}

- (void)updateDateLastUsedBySafari:(id)safari
{
  safariCopy = safari;
  v6 = objc_alloc_init(NSMutableDictionary);
  v5 = _SQLValueForDate();

  [v6 setObjectOrNull:v5 forKey:@"b"];
  [(SQLiteEntity *)self setValuesWithDictionary:v6];
}

- (void)updateCardholderNameFromSafari:(id)safari
{
  safariCopy = safari;
  v6 = objc_alloc_init(NSMutableDictionary);
  v5 = _SQLValueForString();

  [v6 setObjectOrNull:v5 forKey:@"c"];
  [(SQLiteEntity *)self setValuesWithDictionary:v6];
}

+ (void)updateVirtualCard:(id)card fromDatabase:(id)database
{
  cardCopy = card;
  databaseCopy = database;
  if ([cardCopy type] == 2)
  {
    identifier = [cardCopy identifier];
    v7 = [VPANVirtualCard anyInDatabase:databaseCopy withVirtualCardIdentifier:identifier];

    [v7 updateVirtualCard:cardCopy];
  }
}

- (void)updateVirtualCard:(id)card
{
  cardCopy = card;
  if ([cardCopy type] == 2)
  {
    v4 = [(SQLiteEntity *)self valueForProperty:@"b"];
    v5 = _DateForSQLValue();

    [cardCopy setLastAutoFilledBySafari:v5];
    v6 = [(SQLiteEntity *)self valueForProperty:@"c"];
    [cardCopy setNameFromSafari:v6];
  }
}

@end