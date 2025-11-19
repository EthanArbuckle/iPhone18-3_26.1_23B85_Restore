@interface NWNetworkOfInterestClientProxy
- (NWNetworkOfInterestClientProxy)initWithDelegate:(id)a3;
- (SFClientInterfaceProxy)delegate;
- (void)updateNOI:(id)a3 keyPath:(id)a4 change:(id)a5;
@end

@implementation NWNetworkOfInterestClientProxy

- (SFClientInterfaceProxy)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NWNetworkOfInterestClientProxy)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(NWNetworkOfInterestClientProxy *)self init];
  v6 = v5;
  if (v4 && v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v6->_proxyHaveNOIs = objc_opt_respondsToSelector() & 1;
    v6->_proxyUpdateNOI = objc_opt_respondsToSelector() & 1;
  }

  return v6;
}

- (void)updateNOI:(id)a3 keyPath:(id)a4 change:(id)a5
{
  if (self->_proxyUpdateNOI)
  {
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = [(NWNetworkOfInterestClientProxy *)self delegate];
    [v12 proxyUpdateNOI:v11 keyPath:v10 change:v9];
  }
}

@end