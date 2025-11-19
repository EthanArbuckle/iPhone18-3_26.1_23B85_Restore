@interface W5DiagnosticsMode
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDiagnosticsMode:(id)a3;
- (W5DiagnosticsMode)initWithCoder:(id)a3;
- (W5DiagnosticsMode)initWithConfiguration:(id)a3 uuid:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)timestampFor:(int64_t)a3;
- (int64_t)compareCollectionTimeLatestFirst:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setState:(int64_t)a3;
- (void)updatePeer:(id)a3;
@end

@implementation W5DiagnosticsMode

- (W5DiagnosticsMode)initWithConfiguration:(id)a3 uuid:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = W5DiagnosticsMode;
  v8 = [(W5DiagnosticsMode *)&v23 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"Peers"];
    if (v9)
    {
      v10 = v9;
      objc_storeStrong(&v8->_peers, v9);
      v11 = [v6 mutableCopy];
      [v11 removeObjectForKey:@"Peers"];
      objc_storeStrong(&v8->_info, v11);
      if (v7)
      {
        v12 = v7;
        p_super = &v8->_uuid->super;
        v8->_uuid = v12;
      }

      else
      {
        v14 = [MEMORY[0x277CCAD78] UUID];
        uuid = v8->_uuid;
        v8->_uuid = v14;

        p_super = W5GetOSLog();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(W5DiagnosticsMode *)v8 uuid];
          v24 = 136316162;
          v25 = "[W5DiagnosticsMode initWithConfiguration:uuid:]";
          v26 = 2080;
          v27 = "W5DiagnosticsMode.m";
          v28 = 1024;
          v29 = 44;
          v30 = 2114;
          v31 = v16;
          v32 = 2114;
          v33 = v6;
          _os_log_send_and_compose_impl();
        }
      }

      v17 = [MEMORY[0x277CBEB38] dictionary];
      v18 = &v8->_timestamps->super.super;
      v8->_timestamps = v17;
      goto LABEL_8;
    }

    v22 = W5GetOSLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 136315906;
      v25 = "[W5DiagnosticsMode initWithConfiguration:uuid:]";
      v26 = 2080;
      v27 = "W5DiagnosticsMode.m";
      v28 = 1024;
      v29 = 34;
      v30 = 2114;
      v31 = v6;
      _os_log_send_and_compose_impl();
    }
  }

  v18 = W5GetOSLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315650;
    v25 = "[W5DiagnosticsMode initWithConfiguration:uuid:]";
    v26 = 2080;
    v27 = "W5DiagnosticsMode.m";
    v28 = 1024;
    v29 = 55;
    _os_log_send_and_compose_impl();
  }

  v10 = 0;
  v11 = 0;
  v8 = 0;
LABEL_8:

  v19 = v8;
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)updatePeer:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(W5DiagnosticsMode *)self peers];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = W5GetOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(W5DiagnosticsMode *)self peers];
      _os_log_send_and_compose_impl();
    }
  }

  else
  {
    v8 = [(W5DiagnosticsMode *)self peers];
    v9 = [v8 mutableCopy];

    [v9 replaceObjectAtIndex:v6 withObject:v4];
    [(W5DiagnosticsMode *)self setPeers:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
    timestamps = self->_timestamps;
    v7 = [MEMORY[0x277CBEAA8] date];
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)timestamps setObject:v7 forKey:v6];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5DiagnosticsMode allocWithZone:?]];
  [(W5DiagnosticsMode *)v4 setState:[(W5DiagnosticsMode *)self state]];
  v5 = [(W5DiagnosticsMode *)self peers];
  [(W5DiagnosticsMode *)v4 setPeers:v5];

  v6 = [(W5DiagnosticsMode *)self uuid];
  [(W5DiagnosticsMode *)v4 setUuid:v6];

  v7 = [(W5DiagnosticsMode *)self info];
  [(W5DiagnosticsMode *)v4 setInfo:v7];

  v8 = [(W5DiagnosticsMode *)self timestamps];
  [(W5DiagnosticsMode *)v4 setTimestamps:v8];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  state = self->_state;
  v5 = a3;
  [v5 encodeInteger:state forKey:@"_state"];
  [v5 encodeObject:self->_peers forKey:@"_peers"];
  [v5 encodeObject:self->_uuid forKey:@"_uuid"];
  [v5 encodeObject:self->_info forKey:@"_info"];
  [v5 encodeObject:self->_timestamps forKey:@"_timestamps"];
}

- (W5DiagnosticsMode)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = W5DiagnosticsMode;
  v5 = [(W5DiagnosticsMode *)&v33 init];
  if (v5)
  {
    v5->_state = [v4 decodeIntegerForKey:@"_state"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_peers"];
    peers = v5->_peers;
    v5->_peers = v9;

    v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"_uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v12;

    v32 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v32 setWithObjects:{v14, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"_info"];
    info = v5->_info;
    v5->_info = v23;

    v25 = MEMORY[0x277CBEB98];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = [v25 setWithObjects:{v26, v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"_timestamps"];
    timestamps = v5->_timestamps;
    v5->_timestamps = v29;
  }

  return v5;
}

- (id)description
{
  v2 = self;
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_info mutableCopy];
  v4 = [v3 objectForKey:@"Faults"];

  v38 = v2;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v6 = [v3 objectForKeyedSubscript:@"Faults"];
    v7 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v46;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v46 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v45 + 1) + 8 * i);
          v12 = MEMORY[0x277CCACA8];
          v13 = W5DescriptionForDiagnosticsFaultType([v11 integerValue]);
          v14 = [v12 stringWithFormat:@"%@ (%@)", v13, v11];

          [v5 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v8);
    }

    v15 = [v5 componentsJoinedByString:{@", "}];
    [v3 setObject:v15 forKeyedSubscript:@"Faults"];

    v2 = v38;
  }

  v16 = [v3 objectForKey:@"DetectedFaults"];

  if (v16)
  {
    v17 = [MEMORY[0x277CBEB18] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = [v3 objectForKeyedSubscript:@"DetectedFaults"];
    v19 = [v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v41 + 1) + 8 * j);
          v24 = MEMORY[0x277CCACA8];
          v25 = W5DescriptionForDiagnosticsFaultType([v23 integerValue]);
          v26 = [v24 stringWithFormat:@"%@ (%@)", v25, v23];

          [v17 addObject:v26];
        }

        v20 = [v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v20);
    }

    v27 = [v17 componentsJoinedByString:{@", "}];
    [v3 setObject:v27 forKeyedSubscript:@"DetectedFaults"];

    v2 = v38;
  }

  v28 = MEMORY[0x277CCAB68];
  uuid = v2->_uuid;
  v30 = W5DescriptionForDiagnosticsState(v2->_state);
  v31 = [v28 stringWithFormat:@"Diagnostics Mode UUID='%@' State='%@ (%ld)' with peers='%@' info='%@'", uuid, v30, v2->_state, v2->_peers, v3];

  if ([(NSMutableDictionary *)v2->_timestamps count])
  {
    v32 = [MEMORY[0x277CBEB38] dictionary];
    timestamps = v2->_timestamps;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __32__W5DiagnosticsMode_description__block_invoke;
    v39[3] = &unk_279ECD568;
    v40 = v32;
    v34 = v32;
    [(NSMutableDictionary *)timestamps enumerateKeysAndObjectsUsingBlock:v39];
    v35 = [MEMORY[0x277CCACA8] stringWithFormat:@" timestamps='%@'", v34];
    [v31 appendString:v35];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v31;
}

void __32__W5DiagnosticsMode_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = W5NSDateToISO8601Description(a3);
  v6 = *(a1 + 32);
  v7 = [v5 integerValue];

  v8 = W5DescriptionForDiagnosticsState(v7);
  [v6 setObject:v9 forKeyedSubscript:v8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(W5DiagnosticsMode *)self isEqualToDiagnosticsMode:v5];
  }

  return v6;
}

- (BOOL)isEqualToDiagnosticsMode:(id)a3
{
  v4 = a3;
  v5 = [(W5DiagnosticsMode *)self uuid];
  v6 = [v4 uuid];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(W5DiagnosticsMode *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)compareCollectionTimeLatestFirst:(id)a3
{
  v4 = a3;
  v5 = [(W5DiagnosticsMode *)self timestamps];
  v6 = [v5 objectForKey:&unk_288342150];

  v7 = [v4 timestamps];

  v8 = [v7 objectForKey:&unk_288342150];

  v9 = 0;
  if (v6 && v8)
  {
    v9 = [v8 compare:v6];
  }

  return v9;
}

- (id)timestampFor:(int64_t)a3
{
  v5 = [(W5DiagnosticsMode *)self timestamps];

  if (v5)
  {
    v6 = [(W5DiagnosticsMode *)self timestamps];
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v8 = [v6 objectForKey:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end