@interface SBMutableDodgingModel
- (void)addIdentifier:(id)a3 atIndex:(unint64_t)a4 center:(CGPoint)a5 size:(CGSize)a6;
- (void)removeIdentifier:(id)a3;
- (void)setCenter:(CGPoint)a3 forIdentifier:(id)a4;
- (void)setIndex:(unint64_t)a3 forIdentifier:(id)a4;
- (void)setReferenceBounds:(CGRect)a3;
- (void)setSize:(CGSize)a3 forIdentifier:(id)a4;
@end

@implementation SBMutableDodgingModel

- (void)setIndex:(unint64_t)a3 forIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(SBDodgingModel *)self identifiers];
  [v7 removeObject:v6];
  [v7 insertObject:v6 atIndex:a3];
}

- (void)removeIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(SBDodgingModel *)self identifiers];
  [v5 removeObject:v4];

  v6 = [(SBDodgingModel *)self centersForIdentifiers];
  [v6 removeObjectForKey:v4];

  v7 = [(SBDodgingModel *)self sizesForIdentifiers];
  [v7 removeObjectForKey:v4];
}

- (void)addIdentifier:(id)a3 atIndex:(unint64_t)a4 center:(CGPoint)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  y = a5.y;
  x = a5.x;
  v13 = a3;
  v12 = [(SBDodgingModel *)self identifiers];
  [v12 insertObject:v13 atIndex:a4];

  [(SBMutableDodgingModel *)self setCenter:v13 forIdentifier:x, y];
  [(SBMutableDodgingModel *)self setSize:v13 forIdentifier:width, height];
}

- (void)setCenter:(CGPoint)a3 forIdentifier:(id)a4
{
  y = a3.y;
  x = a3.x;
  v12[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(SBDodgingModel *)self centersForIdentifiers];
  v11 = v7;
  v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  v12[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [v8 addEntriesFromDictionary:v10];
}

- (void)setSize:(CGSize)a3 forIdentifier:(id)a4
{
  height = a3.height;
  width = a3.width;
  v12[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(SBDodgingModel *)self sizesForIdentifiers];
  v11 = v7;
  v9 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  v12[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [v8 addEntriesFromDictionary:v10];
}

- (void)setReferenceBounds:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = SBMutableDodgingModel;
  [(SBDodgingModel *)&v3 setReferenceBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

@end