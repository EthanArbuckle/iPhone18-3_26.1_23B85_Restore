@interface WBSContactsHelper
+ (id)CNContactKeyFromWBSABKey:(id)key;
+ (id)WBSABKeyFromCNContactKey:(id)key;
@end

@implementation WBSContactsHelper

+ (id)CNContactKeyFromWBSABKey:(id)key
{
  v3 = CNContactKeyFromWBSABKey__once;
  keyCopy = key;
  if (v3 != -1)
  {
    +[WBSContactsHelper CNContactKeyFromWBSABKey:];
  }

  v5 = [CNContactKeyFromWBSABKey__map objectForKeyedSubscript:keyCopy];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = keyCopy;
  }

  v7 = v6;

  return v6;
}

void __46__WBSContactsHelper_CNContactKeyFromWBSABKey___block_invoke()
{
  v35[29] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C360];
  v1 = *MEMORY[0x1E69C8A98];
  v34[0] = *MEMORY[0x1E69C8A90];
  v34[1] = v1;
  v2 = *MEMORY[0x1E695C1D0];
  v35[0] = v0;
  v35[1] = v2;
  v3 = *MEMORY[0x1E695C208];
  v4 = *MEMORY[0x1E69C8AC0];
  v34[2] = *MEMORY[0x1E69C8AA0];
  v34[3] = v4;
  v5 = *MEMORY[0x1E695C240];
  v35[2] = v3;
  v35[3] = v5;
  v6 = *MEMORY[0x1E695C2B0];
  v34[4] = *MEMORY[0x1E69C8AA8];
  v34[5] = @"JobTitle";
  v7 = *MEMORY[0x1E695C2C8];
  v35[4] = v6;
  v35[5] = v7;
  v8 = *MEMORY[0x1E695C230];
  v9 = *MEMORY[0x1E69C8AD0];
  v34[6] = *MEMORY[0x1E69C8AC8];
  v34[7] = v9;
  v10 = *MEMORY[0x1E695C2F0];
  v35[6] = v8;
  v35[7] = v10;
  v11 = *MEMORY[0x1E695C328];
  v12 = *MEMORY[0x1E69C8AB8];
  v34[8] = *MEMORY[0x1E69C8AB0];
  v34[9] = v12;
  v13 = *MEMORY[0x1E695C330];
  v35[8] = v11;
  v35[9] = v13;
  v14 = *MEMORY[0x1E695C418];
  v34[10] = @"URLs";
  v34[11] = @"Street";
  v15 = *MEMORY[0x1E695CC30];
  v35[10] = v14;
  v35[11] = v15;
  v16 = *MEMORY[0x1E695CC00];
  v34[12] = @"City";
  v34[13] = @"State";
  v17 = *MEMORY[0x1E695CC28];
  v35[12] = v16;
  v35[13] = v17;
  v18 = *MEMORY[0x1E695CC08];
  v34[14] = @"Country";
  v34[15] = @"ZIP";
  v19 = *MEMORY[0x1E695CC18];
  v35[14] = v18;
  v35[15] = v19;
  v20 = *MEMORY[0x1E695C468];
  v34[16] = @"InstantMessageUsername";
  v34[17] = @"InstantMessageService";
  v21 = *MEMORY[0x1E695C460];
  v35[16] = v20;
  v35[17] = v21;
  v22 = *MEMORY[0x1E695CB60];
  v34[18] = @"_$!<Home>!$_";
  v34[19] = @"_$!<HomePage>!$_";
  v23 = *MEMORY[0x1E695CBD0];
  v35[18] = v22;
  v35[19] = v23;
  v24 = *MEMORY[0x1E695CBD8];
  v34[20] = @"_$!<Work>!$_";
  v34[21] = @"_$!<Other>!$_";
  v25 = *MEMORY[0x1E695CB68];
  v35[20] = v24;
  v35[21] = v25;
  v26 = *MEMORY[0x1E695CB90];
  v34[22] = @"_$!<Mobile>!$_";
  v34[23] = @"iPhone";
  v27 = *MEMORY[0x1E695CBC0];
  v35[22] = v26;
  v35[23] = v27;
  v28 = *MEMORY[0x1E695CB88];
  v34[24] = @"_$!<Main>!$_";
  v34[25] = @"_$!<HomeFAX>!$_";
  v29 = *MEMORY[0x1E695CB78];
  v35[24] = v28;
  v35[25] = v29;
  v30 = *MEMORY[0x1E695CBB8];
  v34[26] = @"_$!<WorkFAX>!$_";
  v34[27] = @"_$!<OtherFAX>!$_";
  v31 = *MEMORY[0x1E695CB98];
  v35[26] = v30;
  v35[27] = v31;
  v34[28] = @"_$!<Pager>!$_";
  v35[28] = *MEMORY[0x1E695CBA0];
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:29];
  v33 = CNContactKeyFromWBSABKey__map;
  CNContactKeyFromWBSABKey__map = v32;
}

+ (id)WBSABKeyFromCNContactKey:(id)key
{
  v3 = WBSABKeyFromCNContactKey__once;
  keyCopy = key;
  if (v3 != -1)
  {
    +[WBSContactsHelper WBSABKeyFromCNContactKey:];
  }

  v5 = [WBSABKeyFromCNContactKey__map objectForKeyedSubscript:keyCopy];
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = keyCopy;
  }

  v7 = v6;

  return v6;
}

void __46__WBSContactsHelper_WBSABKeyFromCNContactKey___block_invoke()
{
  v26[29] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69C8A90];
  v1 = *MEMORY[0x1E695C1D0];
  v25[0] = *MEMORY[0x1E695C360];
  v25[1] = v1;
  v2 = *MEMORY[0x1E69C8A98];
  v26[0] = v0;
  v26[1] = v2;
  v3 = *MEMORY[0x1E69C8AA0];
  v4 = *MEMORY[0x1E695C240];
  v25[2] = *MEMORY[0x1E695C208];
  v25[3] = v4;
  v5 = *MEMORY[0x1E69C8AC0];
  v26[2] = v3;
  v26[3] = v5;
  v6 = *MEMORY[0x1E69C8AA8];
  v7 = *MEMORY[0x1E695C2C8];
  v25[4] = *MEMORY[0x1E695C2B0];
  v25[5] = v7;
  v26[4] = v6;
  v26[5] = @"JobTitle";
  v8 = *MEMORY[0x1E69C8AC8];
  v9 = *MEMORY[0x1E695C2F0];
  v25[6] = *MEMORY[0x1E695C230];
  v25[7] = v9;
  v10 = *MEMORY[0x1E69C8AD0];
  v26[6] = v8;
  v26[7] = v10;
  v11 = *MEMORY[0x1E69C8AB0];
  v12 = *MEMORY[0x1E695C330];
  v25[8] = *MEMORY[0x1E695C328];
  v25[9] = v12;
  v13 = *MEMORY[0x1E69C8AB8];
  v26[8] = v11;
  v26[9] = v13;
  v14 = *MEMORY[0x1E695CC30];
  v25[10] = *MEMORY[0x1E695C418];
  v25[11] = v14;
  v26[10] = @"URLs";
  v26[11] = @"Street";
  v15 = *MEMORY[0x1E695CC28];
  v25[12] = *MEMORY[0x1E695CC00];
  v25[13] = v15;
  v26[12] = @"City";
  v26[13] = @"State";
  v16 = *MEMORY[0x1E695CC18];
  v25[14] = *MEMORY[0x1E695CC08];
  v25[15] = v16;
  v26[14] = @"Country";
  v26[15] = @"ZIP";
  v17 = *MEMORY[0x1E695C460];
  v25[16] = *MEMORY[0x1E695C468];
  v25[17] = v17;
  v26[16] = @"InstantMessageUsername";
  v26[17] = @"InstantMessageService";
  v18 = *MEMORY[0x1E695CBD0];
  v25[18] = *MEMORY[0x1E695CB60];
  v25[19] = v18;
  v26[18] = @"_$!<Home>!$_";
  v26[19] = @"_$!<HomePage>!$_";
  v19 = *MEMORY[0x1E695CB68];
  v25[20] = *MEMORY[0x1E695CBD8];
  v25[21] = v19;
  v26[20] = @"_$!<Work>!$_";
  v26[21] = @"_$!<Other>!$_";
  v20 = *MEMORY[0x1E695CBC0];
  v25[22] = *MEMORY[0x1E695CB90];
  v25[23] = v20;
  v26[22] = @"_$!<Mobile>!$_";
  v26[23] = @"iPhone";
  v21 = *MEMORY[0x1E695CB78];
  v25[24] = *MEMORY[0x1E695CB88];
  v25[25] = v21;
  v26[24] = @"_$!<Main>!$_";
  v26[25] = @"_$!<HomeFAX>!$_";
  v22 = *MEMORY[0x1E695CB98];
  v25[26] = *MEMORY[0x1E695CBB8];
  v25[27] = v22;
  v26[26] = @"_$!<WorkFAX>!$_";
  v26[27] = @"_$!<OtherFAX>!$_";
  v25[28] = *MEMORY[0x1E695CBA0];
  v26[28] = @"_$!<Pager>!$_";
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:29];
  v24 = WBSABKeyFromCNContactKey__map;
  WBSABKeyFromCNContactKey__map = v23;
}

@end