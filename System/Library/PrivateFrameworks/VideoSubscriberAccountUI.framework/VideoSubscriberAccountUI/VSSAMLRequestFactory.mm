@interface VSSAMLRequestFactory
+ (id)attributeQueryWithAttributeNames:(id)a3 channelID:(id)a4 authNResponse:(id)a5 error:(id *)a6;
+ (id)logoutRequestWithError:(id *)a3;
@end

@implementation VSSAMLRequestFactory

+ (id)attributeQueryWithAttributeNames:(id)a3 channelID:(id)a4 authNResponse:(id)a5 error:(id *)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = VSSharedSAMLParserController();
  v13 = [v12 newAttributeQuery:v10 error:a6];

  if (v13)
  {
    [v13 setSubjectFromResponse:v11];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v13 addAttribute:{*(*(&v21 + 1) + 8 * i), v21}];
        }

        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)logoutRequestWithError:(id *)a3
{
  v4 = VSSharedSAMLParserController();
  v5 = [v4 newLogoutRequest:a3];

  return v5;
}

@end