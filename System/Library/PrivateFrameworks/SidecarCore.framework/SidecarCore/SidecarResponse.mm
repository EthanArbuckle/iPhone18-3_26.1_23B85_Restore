@interface SidecarResponse
- (void)accept;
@end

@implementation SidecarResponse

- (void)accept
{
  v6[2] = *MEMORY[0x277D85DE8];
  if ((atomic_exchange(&self->_accepted, 1u) & 1) == 0)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
    SidecarMessageSetType(v3, 2);
    v4 = [(SidecarRequest *)self uuid];
    v6[0] = 0;
    v6[1] = 0;
    [v4 getUUIDBytes:v6];
    SidecarMessageSetRequestID(v3, bswap32(v6[0]));

    [(SidecarRequest *)self _sendMessage:v3];
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end