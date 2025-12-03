@interface W5DiagnosticsModePeer
- (W5DiagnosticsModePeer)initWithCoder:(id)coder;
- (W5DiagnosticsModePeer)initWithRole:(int64_t)role peer:(id)peer info:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation W5DiagnosticsModePeer

- (W5DiagnosticsModePeer)initWithRole:(int64_t)role peer:(id)peer info:(id)info
{
  v24 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = W5DiagnosticsModePeer;
  v11 = [(W5DiagnosticsModePeer *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_role = role;
    objc_storeStrong(&v11->_peer, peer);
    v13 = infoCopy;
    p_super = &v12->_info->super.super;
    v12->_info = v13;
  }

  else
  {
    p_super = W5GetOSLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "[W5DiagnosticsModePeer initWithRole:peer:info:]";
      v20 = 2080;
      v21 = "W5DiagnosticsModePeer.m";
      v22 = 1024;
      v23 = 37;
      _os_log_send_and_compose_impl();
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5DiagnosticsModePeer allocWithZone:?]];
  [(W5DiagnosticsModePeer *)v4 setRole:[(W5DiagnosticsModePeer *)self role]];
  peer = [(W5DiagnosticsModePeer *)self peer];
  [(W5DiagnosticsModePeer *)v4 setPeer:peer];

  info = [(W5DiagnosticsModePeer *)self info];
  [(W5DiagnosticsModePeer *)v4 setInfo:info];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  role = self->_role;
  coderCopy = coder;
  [coderCopy encodeInteger:role forKey:@"_role"];
  [coderCopy encodeObject:self->_peer forKey:@"_peer"];
  [coderCopy encodeObject:self->_info forKey:@"_info"];
}

- (W5DiagnosticsModePeer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = W5DiagnosticsModePeer;
  v5 = [(W5DiagnosticsModePeer *)&v22 init];
  if (v5)
  {
    v5->_role = [coderCopy decodeIntegerForKey:@"_role"];
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_peer"];
    peer = v5->_peer;
    v5->_peer = v7;

    v21 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v21 setWithObjects:{v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"_info"];
    info = v5->_info;
    v5->_info = v18;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = W5DescriptionForDiagnosticsRole(self->_role);
  v5 = [v3 stringWithFormat:@"Diagnostics Mode Peer role='%@ (%ld)' with peer='%@' info='%@'", v4, self->_role, self->_peer, self->_info];

  return v5;
}

@end