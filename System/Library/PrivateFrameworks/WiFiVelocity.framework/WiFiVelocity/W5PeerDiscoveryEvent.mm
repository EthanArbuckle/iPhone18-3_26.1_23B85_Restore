@interface W5PeerDiscoveryEvent
- (W5PeerDiscoveryEvent)initWithCoder:(id)coder;
- (W5PeerDiscoveryEvent)initWithPeersFound:(id)found peersLost:(id)lost info:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation W5PeerDiscoveryEvent

- (W5PeerDiscoveryEvent)initWithPeersFound:(id)found peersLost:(id)lost info:(id)info
{
  v25 = *MEMORY[0x277D85DE8];
  foundCopy = found;
  lostCopy = lost;
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = W5PeerDiscoveryEvent;
  v12 = [(W5PeerDiscoveryEvent *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_peersFound, found);
    objc_storeStrong(&v13->_peersLost, lost);
    v14 = infoCopy;
    p_super = &v13->_info->super;
    v13->_info = v14;
  }

  else
  {
    p_super = W5GetOSLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = "[W5PeerDiscoveryEvent initWithPeersFound:peersLost:info:]";
      v21 = 2080;
      v22 = "W5PeerDiscoveryEvent.m";
      v23 = 1024;
      v24 = 33;
      _os_log_send_and_compose_impl();
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5PeerDiscoveryEvent allocWithZone:?]];
  peersFound = [(W5PeerDiscoveryEvent *)self peersFound];
  [(W5PeerDiscoveryEvent *)v4 setPeersFound:peersFound];

  peersLost = [(W5PeerDiscoveryEvent *)self peersLost];
  [(W5PeerDiscoveryEvent *)v4 setPeersLost:peersLost];

  info = [(W5PeerDiscoveryEvent *)self info];
  [(W5PeerDiscoveryEvent *)v4 setInfo:info];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  peersFound = self->_peersFound;
  coderCopy = coder;
  [coderCopy encodeObject:peersFound forKey:@"_peersFound"];
  [coderCopy encodeObject:self->_peersLost forKey:@"_peersLost"];
  [coderCopy encodeObject:self->_info forKey:@"_info"];
}

- (W5PeerDiscoveryEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = W5PeerDiscoveryEvent;
  v5 = [(W5PeerDiscoveryEvent *)&v27 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_peersFound"];
    peersFound = v5->_peersFound;
    v5->_peersFound = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_peersLost"];
    peersLost = v5->_peersLost;
    v5->_peersLost = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v16 setWithObjects:{v17, v18, v19, v20, v21, v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"_info"];
    info = v5->_info;
    v5->_info = v24;
  }

  return v5;
}

@end