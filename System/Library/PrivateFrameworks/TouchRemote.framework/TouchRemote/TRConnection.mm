@interface TRConnection
- (void)invalidate;
- (void)sendEvent:(id)event;
- (void)sendRequest:(id)request;
- (void)sendResponse:(id)response;
@end

@implementation TRConnection

- (void)sendEvent:(id)event
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];
}

- (void)sendRequest:(id)request
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];
}

- (void)sendResponse:(id)response
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];
}

- (void)invalidate
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass", v4}];
}

@end