@interface SBMutableDodgingModel
- (void)addIdentifier:(id)identifier atIndex:(unint64_t)index center:(CGPoint)center size:(CGSize)size;
- (void)removeIdentifier:(id)identifier;
- (void)setCenter:(CGPoint)center forIdentifier:(id)identifier;
- (void)setIndex:(unint64_t)index forIdentifier:(id)identifier;
- (void)setReferenceBounds:(CGRect)bounds;
- (void)setSize:(CGSize)size forIdentifier:(id)identifier;
@end

@implementation SBMutableDodgingModel

- (void)setIndex:(unint64_t)index forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifiers = [(SBDodgingModel *)self identifiers];
  [identifiers removeObject:identifierCopy];
  [identifiers insertObject:identifierCopy atIndex:index];
}

- (void)removeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifiers = [(SBDodgingModel *)self identifiers];
  [identifiers removeObject:identifierCopy];

  centersForIdentifiers = [(SBDodgingModel *)self centersForIdentifiers];
  [centersForIdentifiers removeObjectForKey:identifierCopy];

  sizesForIdentifiers = [(SBDodgingModel *)self sizesForIdentifiers];
  [sizesForIdentifiers removeObjectForKey:identifierCopy];
}

- (void)addIdentifier:(id)identifier atIndex:(unint64_t)index center:(CGPoint)center size:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = center.y;
  x = center.x;
  identifierCopy = identifier;
  identifiers = [(SBDodgingModel *)self identifiers];
  [identifiers insertObject:identifierCopy atIndex:index];

  [(SBMutableDodgingModel *)self setCenter:identifierCopy forIdentifier:x, y];
  [(SBMutableDodgingModel *)self setSize:identifierCopy forIdentifier:width, height];
}

- (void)setCenter:(CGPoint)center forIdentifier:(id)identifier
{
  y = center.y;
  x = center.x;
  v12[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  centersForIdentifiers = [(SBDodgingModel *)self centersForIdentifiers];
  v11 = identifierCopy;
  v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  v12[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [centersForIdentifiers addEntriesFromDictionary:v10];
}

- (void)setSize:(CGSize)size forIdentifier:(id)identifier
{
  height = size.height;
  width = size.width;
  v12[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  sizesForIdentifiers = [(SBDodgingModel *)self sizesForIdentifiers];
  v11 = identifierCopy;
  v9 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  v12[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [sizesForIdentifiers addEntriesFromDictionary:v10];
}

- (void)setReferenceBounds:(CGRect)bounds
{
  v3.receiver = self;
  v3.super_class = SBMutableDodgingModel;
  [(SBDodgingModel *)&v3 setReferenceBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
}

@end