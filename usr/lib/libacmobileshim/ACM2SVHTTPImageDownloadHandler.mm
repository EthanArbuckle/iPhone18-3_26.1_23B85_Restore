@interface ACM2SVHTTPImageDownloadHandler
+ (id)handlerWithURLString:(id)a3;
- (ACM2SVHTTPImageDownloadHandler)initWithURLString:(id)a3;
- (void)downloadImageWithCompletionBlock:(id)a3;
@end

@implementation ACM2SVHTTPImageDownloadHandler

+ (id)handlerWithURLString:(id)a3
{
  v3 = [[a1 alloc] initWithURLString:a3];

  return v3;
}

- (ACM2SVHTTPImageDownloadHandler)initWithURLString:(id)a3
{
  v8[1] = *MEMORY[0x29EDCA608];
  v7.receiver = self;
  v7.super_class = ACM2SVHTTPImageDownloadHandler;
  v4 = [(ACM2SVHTTPImageDownloadHandler *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(ACFHTTPTransportProtocol *)[(ACCHTTPHandler *)v4 transport] setRequestURLTemplate:@"%@"];
    v8[0] = a3;
    -[ACFHTTPTransportProtocol setServerHosts:](-[ACCHTTPHandler transport](v5, "transport"), "setServerHosts:", [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1]);
    [(ACFHTTPTransportProtocol *)[(ACCHTTPHandler *)v5 transport] setHttpMethod:@"GET"];
  }

  return v5;
}

- (void)downloadImageWithCompletionBlock:(id)a3
{
  v4 = [a3 copy];
  v5 = [(ACCHTTPHandler *)self transport];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __67__ACM2SVHTTPImageDownloadHandler_downloadImageWithCompletionBlock___block_invoke;
  v6[3] = &unk_29EE919A0;
  v6[4] = self;
  v6[5] = v4;
  [(ACFHTTPTransportProtocol *)v5 performRequestWithCompletionBlock:v6];
}

uint64_t __67__ACM2SVHTTPImageDownloadHandler_downloadImageWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  if (!a2 || a3)
  {
    a2 = 0;
  }

  (*(v4 + 16))(v4, a2);
  v5 = [objc_msgSend(*(a1 + 32) "finalizeBlock")];
  [*(a1 + 32) setFinalizeBlock:0];
  if (v5)
  {
    v5[2](v5, *(a1 + 32));
  }

  return 1;
}

@end