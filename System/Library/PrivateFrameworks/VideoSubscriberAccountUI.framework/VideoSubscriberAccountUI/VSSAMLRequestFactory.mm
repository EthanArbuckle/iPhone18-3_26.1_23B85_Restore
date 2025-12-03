@interface VSSAMLRequestFactory
+ (id)attributeQueryWithAttributeNames:(id)names channelID:(id)d authNResponse:(id)response error:(id *)error;
+ (id)logoutRequestWithError:(id *)error;
@end

@implementation VSSAMLRequestFactory

+ (id)attributeQueryWithAttributeNames:(id)names channelID:(id)d authNResponse:(id)response error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  dCopy = d;
  responseCopy = response;
  v12 = VSSharedSAMLParserController();
  v13 = [v12 newAttributeQuery:dCopy error:error];

  if (v13)
  {
    [v13 setSubjectFromResponse:responseCopy];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = namesCopy;
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

+ (id)logoutRequestWithError:(id *)error
{
  v4 = VSSharedSAMLParserController();
  v5 = [v4 newLogoutRequest:error];

  return v5;
}

@end