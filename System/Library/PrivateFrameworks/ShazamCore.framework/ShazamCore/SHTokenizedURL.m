@interface SHTokenizedURL
+ (id)replaceToken:(int64_t)a3 withValue:(id)a4 urlString:(id)a5;
+ (id)tokenForTokenType:(int64_t)a3;
- (BOOL)containsToken:(int64_t)a3;
- (BOOL)containsTokens;
- (BOOL)path:(id)a3 containsToken:(int64_t)a4;
- (BOOL)updateToken:(int64_t)a3 withValue:(id)a4;
- (SHTokenizedURL)initWithBaseURL:(id)a3 URLPath:(id)a4;
- (SHTokenizedURL)initWithHost:(id)a3 URLPath:(id)a4;
- (SHTokenizedURL)initWithString:(id)a3;
- (SHTokenizedURL)initWithURLComponents:(id)a3;
- (id)URLRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)originalURLString;
- (id)tokenizedURLString;
@end

@implementation SHTokenizedURL

- (SHTokenizedURL)initWithString:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CCACE0];
    v5 = a3;
    v6 = [[v4 alloc] initWithString:v5];

    self = [(SHTokenizedURL *)self initWithURLComponents:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SHTokenizedURL)initWithBaseURL:(id)a3 URLPath:(id)a4
{
  v5 = [MEMORY[0x277CBEBC0] URLWithString:a4 relativeToURL:a3];
  v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v5 resolvingAgainstBaseURL:1];
  v7 = [(SHTokenizedURL *)self initWithURLComponents:v6];

  return v7;
}

- (SHTokenizedURL)initWithHost:(id)a3 URLPath:(id)a4
{
  v6 = MEMORY[0x277CCACE0];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setScheme:@"https"];
  [v9 setHost:v8];

  [v9 setPath:v7];
  v10 = [(SHTokenizedURL *)self initWithURLComponents:v9];

  return v10;
}

- (SHTokenizedURL)initWithURLComponents:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SHTokenizedURL;
  v6 = [(SHTokenizedURL *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalComponents, a3);
    v8 = [MEMORY[0x277CBEB38] dictionary];
    tokenDictionary = v7->_tokenDictionary;
    v7->_tokenDictionary = v8;
  }

  return v7;
}

+ (id)replaceToken:(int64_t)a3 withValue:(id)a4 urlString:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 tokenForTokenType:a3];
  v11 = [v8 stringByReplacingOccurrencesOfString:v10 withString:v9];

  return v11;
}

- (BOOL)updateToken:(int64_t)a3 withValue:(id)a4
{
  v6 = a4;
  v7 = [(SHTokenizedURL *)self originalURLString];
  v8 = [objc_opt_class() tokenForTokenType:a3];
  v9 = [v7 containsString:v8];

  if (v9)
  {
    v10 = [objc_opt_class() tokenForTokenType:a3];
    v11 = [(SHTokenizedURL *)self tokenDictionary];
    v12 = [v6 copy];
    [v11 setValue:v12 forKey:v10];
  }

  return v9;
}

- (id)originalURLString
{
  v2 = [(SHTokenizedURL *)self originalComponents];
  v3 = [v2 string];
  v4 = [v3 stringByRemovingPercentEncoding];

  return v4;
}

+ (id)tokenForTokenType:(int64_t)a3
{
  if ((a3 - 1) > 0xD)
  {
    return @"{deviceid}";
  }

  else
  {
    return off_2788FB090[a3 - 1];
  }
}

- (id)tokenizedURLString
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(SHTokenizedURL *)self originalURLString];
  v4 = [v3 copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SHTokenizedURL *)self tokenDictionary];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * v9);
        v12 = [(SHTokenizedURL *)self tokenDictionary];
        v13 = [v12 objectForKeyedSubscript:v11];

        v4 = [v10 stringByReplacingOccurrencesOfString:v11 withString:v13];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)URLRepresentation
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(SHTokenizedURL *)self tokenizedURLString];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (BOOL)containsToken:(int64_t)a3
{
  v5 = [(SHTokenizedURL *)self tokenizedURLString];
  LOBYTE(a3) = [(SHTokenizedURL *)self path:v5 containsToken:a3];

  return a3;
}

- (BOOL)path:(id)a3 containsToken:(int64_t)a4
{
  v5 = a3;
  v6 = [objc_opt_class() tokenForTokenType:a4];
  v7 = [v5 containsString:v6];

  return v7;
}

- (BOOL)containsTokens
{
  v3 = [(SHTokenizedURL *)self tokenizedURLString];
  v4 = [v3 copy];

  if (![(SHTokenizedURL *)self path:v4 containsToken:0])
  {
    v5 = 1;
    if ([(SHTokenizedURL *)self path:v4 containsToken:1])
    {
      goto LABEL_4;
    }

    if (![(SHTokenizedURL *)self path:v4 containsToken:2]&& ![(SHTokenizedURL *)self path:v4 containsToken:3]&& ![(SHTokenizedURL *)self path:v4 containsToken:4]&& ![(SHTokenizedURL *)self path:v4 containsToken:5]&& ![(SHTokenizedURL *)self path:v4 containsToken:9]&& ![(SHTokenizedURL *)self path:v4 containsToken:10]&& ![(SHTokenizedURL *)self path:v4 containsToken:11]&& ![(SHTokenizedURL *)self path:v4 containsToken:12]&& ![(SHTokenizedURL *)self path:v4 containsToken:14])
    {
      v5 = [(SHTokenizedURL *)self path:v4 containsToken:13];
      goto LABEL_4;
    }
  }

  v5 = 1;
LABEL_4:

  return v5;
}

- (id)description
{
  v2 = [(SHTokenizedURL *)self URLRepresentation];
  v3 = [v2 absoluteString];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [SHTokenizedURL allocWithZone:?];
  v6 = [(SHTokenizedURL *)self originalURLString];
  v7 = [(SHTokenizedURL *)v5 initWithString:v6];

  v8 = [(SHTokenizedURL *)self tokenDictionary];
  v9 = [v8 mutableCopyWithZone:a3];
  [(SHTokenizedURL *)v7 setTokenDictionary:v9];

  return v7;
}

@end