@interface SHTokenizedURL
+ (id)replaceToken:(int64_t)token withValue:(id)value urlString:(id)string;
+ (id)tokenForTokenType:(int64_t)type;
- (BOOL)containsToken:(int64_t)token;
- (BOOL)containsTokens;
- (BOOL)path:(id)path containsToken:(int64_t)token;
- (BOOL)updateToken:(int64_t)token withValue:(id)value;
- (SHTokenizedURL)initWithBaseURL:(id)l URLPath:(id)path;
- (SHTokenizedURL)initWithHost:(id)host URLPath:(id)path;
- (SHTokenizedURL)initWithString:(id)string;
- (SHTokenizedURL)initWithURLComponents:(id)components;
- (id)URLRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)originalURLString;
- (id)tokenizedURLString;
@end

@implementation SHTokenizedURL

- (SHTokenizedURL)initWithString:(id)string
{
  if (string)
  {
    v4 = MEMORY[0x277CCACE0];
    stringCopy = string;
    v6 = [[v4 alloc] initWithString:stringCopy];

    self = [(SHTokenizedURL *)self initWithURLComponents:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SHTokenizedURL)initWithBaseURL:(id)l URLPath:(id)path
{
  v5 = [MEMORY[0x277CBEBC0] URLWithString:path relativeToURL:l];
  v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v5 resolvingAgainstBaseURL:1];
  v7 = [(SHTokenizedURL *)self initWithURLComponents:v6];

  return v7;
}

- (SHTokenizedURL)initWithHost:(id)host URLPath:(id)path
{
  v6 = MEMORY[0x277CCACE0];
  pathCopy = path;
  hostCopy = host;
  v9 = objc_alloc_init(v6);
  [v9 setScheme:@"https"];
  [v9 setHost:hostCopy];

  [v9 setPath:pathCopy];
  v10 = [(SHTokenizedURL *)self initWithURLComponents:v9];

  return v10;
}

- (SHTokenizedURL)initWithURLComponents:(id)components
{
  componentsCopy = components;
  v11.receiver = self;
  v11.super_class = SHTokenizedURL;
  v6 = [(SHTokenizedURL *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalComponents, components);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    tokenDictionary = v7->_tokenDictionary;
    v7->_tokenDictionary = dictionary;
  }

  return v7;
}

+ (id)replaceToken:(int64_t)token withValue:(id)value urlString:(id)string
{
  stringCopy = string;
  valueCopy = value;
  v10 = [self tokenForTokenType:token];
  v11 = [stringCopy stringByReplacingOccurrencesOfString:v10 withString:valueCopy];

  return v11;
}

- (BOOL)updateToken:(int64_t)token withValue:(id)value
{
  valueCopy = value;
  originalURLString = [(SHTokenizedURL *)self originalURLString];
  v8 = [objc_opt_class() tokenForTokenType:token];
  v9 = [originalURLString containsString:v8];

  if (v9)
  {
    v10 = [objc_opt_class() tokenForTokenType:token];
    tokenDictionary = [(SHTokenizedURL *)self tokenDictionary];
    v12 = [valueCopy copy];
    [tokenDictionary setValue:v12 forKey:v10];
  }

  return v9;
}

- (id)originalURLString
{
  originalComponents = [(SHTokenizedURL *)self originalComponents];
  string = [originalComponents string];
  stringByRemovingPercentEncoding = [string stringByRemovingPercentEncoding];

  return stringByRemovingPercentEncoding;
}

+ (id)tokenForTokenType:(int64_t)type
{
  if ((type - 1) > 0xD)
  {
    return @"{deviceid}";
  }

  else
  {
    return off_2788FB090[type - 1];
  }
}

- (id)tokenizedURLString
{
  v21 = *MEMORY[0x277D85DE8];
  originalURLString = [(SHTokenizedURL *)self originalURLString];
  v4 = [originalURLString copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  tokenDictionary = [(SHTokenizedURL *)self tokenDictionary];
  v6 = [tokenDictionary countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(tokenDictionary);
        }

        v11 = *(*(&v16 + 1) + 8 * v9);
        tokenDictionary2 = [(SHTokenizedURL *)self tokenDictionary];
        v13 = [tokenDictionary2 objectForKeyedSubscript:v11];

        v4 = [v10 stringByReplacingOccurrencesOfString:v11 withString:v13];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [tokenDictionary countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)URLRepresentation
{
  v2 = MEMORY[0x277CBEBC0];
  tokenizedURLString = [(SHTokenizedURL *)self tokenizedURLString];
  v4 = [v2 URLWithString:tokenizedURLString];

  return v4;
}

- (BOOL)containsToken:(int64_t)token
{
  tokenizedURLString = [(SHTokenizedURL *)self tokenizedURLString];
  LOBYTE(token) = [(SHTokenizedURL *)self path:tokenizedURLString containsToken:token];

  return token;
}

- (BOOL)path:(id)path containsToken:(int64_t)token
{
  pathCopy = path;
  v6 = [objc_opt_class() tokenForTokenType:token];
  v7 = [pathCopy containsString:v6];

  return v7;
}

- (BOOL)containsTokens
{
  tokenizedURLString = [(SHTokenizedURL *)self tokenizedURLString];
  v4 = [tokenizedURLString copy];

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
  uRLRepresentation = [(SHTokenizedURL *)self URLRepresentation];
  absoluteString = [uRLRepresentation absoluteString];

  return absoluteString;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [SHTokenizedURL allocWithZone:?];
  originalURLString = [(SHTokenizedURL *)self originalURLString];
  v7 = [(SHTokenizedURL *)v5 initWithString:originalURLString];

  tokenDictionary = [(SHTokenizedURL *)self tokenDictionary];
  v9 = [tokenDictionary mutableCopyWithZone:zone];
  [(SHTokenizedURL *)v7 setTokenDictionary:v9];

  return v7;
}

@end