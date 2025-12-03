@interface ICQCommerceRemoteUIDataProvider
- (BOOL)parseData:(id)data returningError:(id *)error;
- (ICQCommerceRemoteUIDelegate)parent;
- (void)_setFailureType:(id)type;
@end

@implementation ICQCommerceRemoteUIDataProvider

- (BOOL)parseData:(id)data returningError:(id *)error
{
  dataCopy = data;
  self->_plist = 0;
  v13 = 0;
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:&v13 error:0];
  v8 = v7;
  if (v7)
  {
    self->_plist = 1;
    v9 = [v7 objectForKeyedSubscript:@"failureType"];
    [(ICQCommerceRemoteUIDataProvider *)self _setFailureType:v9];

    v12.receiver = self;
    v12.super_class = ICQCommerceRemoteUIDataProvider;
    v10 = [(ISProtocolDataProvider *)&v12 parseData:dataCopy returningError:error];
  }

  else
  {
    [(ISDataProvider *)self setOutput:dataCopy];
    v10 = 1;
  }

  return v10;
}

- (void)_setFailureType:(id)type
{
  typeCopy = type;
  if (objc_opt_respondsToSelector())
  {
    integerValue = [typeCopy integerValue];
  }

  else
  {
    integerValue = 0;
  }

  parent = [(ICQCommerceRemoteUIDataProvider *)self parent];
  [parent setFailureType:integerValue];
}

- (ICQCommerceRemoteUIDelegate)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end