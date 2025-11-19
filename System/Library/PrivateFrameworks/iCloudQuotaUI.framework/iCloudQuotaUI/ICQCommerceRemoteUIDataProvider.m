@interface ICQCommerceRemoteUIDataProvider
- (BOOL)parseData:(id)a3 returningError:(id *)a4;
- (ICQCommerceRemoteUIDelegate)parent;
- (void)_setFailureType:(id)a3;
@end

@implementation ICQCommerceRemoteUIDataProvider

- (BOOL)parseData:(id)a3 returningError:(id *)a4
{
  v6 = a3;
  self->_plist = 0;
  v13 = 0;
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:&v13 error:0];
  v8 = v7;
  if (v7)
  {
    self->_plist = 1;
    v9 = [v7 objectForKeyedSubscript:@"failureType"];
    [(ICQCommerceRemoteUIDataProvider *)self _setFailureType:v9];

    v12.receiver = self;
    v12.super_class = ICQCommerceRemoteUIDataProvider;
    v10 = [(ISProtocolDataProvider *)&v12 parseData:v6 returningError:a4];
  }

  else
  {
    [(ISDataProvider *)self setOutput:v6];
    v10 = 1;
  }

  return v10;
}

- (void)_setFailureType:(id)a3
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v6 integerValue];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(ICQCommerceRemoteUIDataProvider *)self parent];
  [v5 setFailureType:v4];
}

- (ICQCommerceRemoteUIDelegate)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end