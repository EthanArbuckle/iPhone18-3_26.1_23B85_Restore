@interface TBNetworkRemoteFetchResponse
+ (id)responseWithNetworkSearchResults:(id)a3;
- (TBNetworkRemoteFetchResponse)initWithNetworkSearchResults:(id)a3;
@end

@implementation TBNetworkRemoteFetchResponse

+ (id)responseWithNetworkSearchResults:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithNetworkSearchResults:v4];

  return v5;
}

- (TBNetworkRemoteFetchResponse)initWithNetworkSearchResults:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectAtIndexedSubscript:0];
  if ([v4 count] >= 2)
  {
    NSLog(&cfstr_SGeowifiqualit.isa, "-[TBNetworkRemoteFetchResponse initWithNetworkSearchResults:]", [v4 count]);
  }

  v6 = [v5 matches];
  v7 = [v6 objectAtIndexedSubscript:0];

  v8 = [v5 matches];
  v9 = [v8 count];

  if (v9 >= 2)
  {
    NSLog(&cfstr_SGeowifiessmat.isa, "-[TBNetworkRemoteFetchResponse initWithNetworkSearchResults:]", [v4 count]);
  }

  NSLog(&cfstr_SResultCountLu.isa, "-[TBNetworkRemoteFetchResponse initWithNetworkSearchResults:]", [v4 count]);
  if ([v7 status] != 1)
  {
    NSLog(&cfstr_SMatchStatusIs.isa, "[TBNetworkRemoteFetchResponse initWithNetworkSearchResults:]");
    v14 = [TBError alloc];
    v20 = *MEMORY[0x277CCA450];
    v21 = @"No results returned from remote source";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v15 = [(TBError *)v14 initWithType:154 userInfo:v11];
LABEL_10:
    v13 = v15;
    v12 = 0;
    goto LABEL_11;
  }

  v10 = [v7 ess];

  if (!v10)
  {
    v22 = *MEMORY[0x277CCA450];
    v23 = @"nil ess from response";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v15 = [TBError responseErrorWithUserInfo:v11];
    goto LABEL_10;
  }

  v11 = [v7 ess];
  v24[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v13 = 0;
LABEL_11:

  v19.receiver = self;
  v19.super_class = TBNetworkRemoteFetchResponse;
  v16 = [(TBRemoteFetchResponse *)&v19 initWithResults:v12 tiles:0 error:v13];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end