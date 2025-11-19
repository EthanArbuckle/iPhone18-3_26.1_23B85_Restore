@interface SiriUICarDNDContextProvider
- (SiriUICarDNDContextProviderDelegate)delegate;
- (id)getCurrentContext;
@end

@implementation SiriUICarDNDContextProvider

- (id)getCurrentContext
{
  if (self->_hintContext)
  {
    v3 = objc_alloc(MEMORY[0x277CBEA60]);
    v4 = [(SADeviceCarDNDHintContext *)self->_hintContext dictionary];
    v5 = [v3 initWithObjects:{v4, 0}];
  }

  else
  {
    v5 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained contextProvided:self];

  return v5;
}

- (SiriUICarDNDContextProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end