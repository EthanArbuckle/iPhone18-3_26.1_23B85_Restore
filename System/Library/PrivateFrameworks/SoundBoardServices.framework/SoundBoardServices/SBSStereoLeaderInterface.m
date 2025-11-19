@interface SBSStereoLeaderInterface
- (SBSStereoLeaderInterface)initWithTarget:(id)a3;
- (void)dealloc;
- (void)isFollower:(id)a3;
@end

@implementation SBSStereoLeaderInterface

- (void)dealloc
{
  [(NSXPCConnection *)self->_sbConnection invalidate];
  v3.receiver = self;
  v3.super_class = SBSStereoLeaderInterface;
  [(SBSStereoLeaderInterface *)&v3 dealloc];
}

- (void)isFollower:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    sbProxy = self->_sbProxy;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__SBSStereoLeaderInterface_isFollower___block_invoke;
    v7[3] = &unk_279CD5558;
    v8 = v4;
    [(SBSImplementer *)sbProxy isDeviceStereoFollower:v7];
  }
}

void __39__SBSStereoLeaderInterface_isFollower___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  (*(v2 + 16))(v2, v3);
}

- (SBSStereoLeaderInterface)initWithTarget:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBSStereoLeaderInterface;
  v5 = [(SBSStereoLeaderInterface *)&v9 init];
  if (v5)
  {
    if ([v4 isEqualToString:@"localhost"])
    {
      [SBSUtils createProxyConnectionForXPCWithExportedObject:0 connection:&v5->_sbConnection];
    }

    else
    {
      [SBSUtils createProxyConnectionForRapportTarget:v4];
    }
    v6 = ;
    sbProxy = v5->_sbProxy;
    v5->_sbProxy = v6;
  }

  return v5;
}

@end