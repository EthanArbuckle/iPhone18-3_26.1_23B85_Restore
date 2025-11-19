@interface SBAmbientChoiceRow
- (void)setPossibleChoicesFromDictionary:(id)a3 order:(id)a4;
@end

@implementation SBAmbientChoiceRow

- (void)setPossibleChoicesFromDictionary:(id)a3 order:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v6 allKeys];
  }

  v10 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__SBAmbientChoiceRow_setPossibleChoicesFromDictionary_order___block_invoke;
  v13[3] = &unk_2783B5670;
  v14 = v6;
  v11 = v6;
  v12 = [v10 bs_compactMap:v13];
  [(SBAmbientChoiceRow *)self setPossibleValues:v10];
  [(SBAmbientChoiceRow *)self setPossibleTitles:v12];
}

@end