@interface NSOrderedSet(Voicemail)
- (id)arrayByIntersectingWithOrderedSet:()Voicemail;
- (id)arrayBySubtractingOrderedSet:()Voicemail;
@end

@implementation NSOrderedSet(Voicemail)

- (id)arrayBySubtractingOrderedSet:()Voicemail
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__NSOrderedSet_Voicemail__arrayBySubtractingOrderedSet___block_invoke;
  v9[3] = &unk_279E3D838;
  v10 = v4;
  v5 = v4;
  v6 = [a1 indexesOfObjectsPassingTest:v9];
  v7 = [a1 objectsAtIndexes:v6];

  return v7;
}

- (id)arrayByIntersectingWithOrderedSet:()Voicemail
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__NSOrderedSet_Voicemail__arrayByIntersectingWithOrderedSet___block_invoke;
  v9[3] = &unk_279E3D838;
  v10 = v4;
  v5 = v4;
  v6 = [a1 indexesOfObjectsPassingTest:v9];
  v7 = [a1 objectsAtIndexes:v6];

  return v7;
}

@end