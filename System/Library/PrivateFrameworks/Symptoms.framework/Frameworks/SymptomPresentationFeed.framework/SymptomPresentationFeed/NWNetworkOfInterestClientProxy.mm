@interface NWNetworkOfInterestClientProxy
- (NWNetworkOfInterestClientProxy)initWithDelegate:(id)delegate;
- (SFClientInterfaceProxy)delegate;
- (void)updateNOI:(id)i keyPath:(id)path change:(id)change;
@end

@implementation NWNetworkOfInterestClientProxy

- (SFClientInterfaceProxy)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NWNetworkOfInterestClientProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(NWNetworkOfInterestClientProxy *)self init];
  v6 = v5;
  if (delegateCopy && v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_proxyHaveNOIs = objc_opt_respondsToSelector() & 1;
    v6->_proxyUpdateNOI = objc_opt_respondsToSelector() & 1;
  }

  return v6;
}

- (void)updateNOI:(id)i keyPath:(id)path change:(id)change
{
  if (self->_proxyUpdateNOI)
  {
    changeCopy = change;
    pathCopy = path;
    iCopy = i;
    delegate = [(NWNetworkOfInterestClientProxy *)self delegate];
    [delegate proxyUpdateNOI:iCopy keyPath:pathCopy change:changeCopy];
  }
}

@end