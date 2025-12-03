@interface W5Event
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEvent:(id)event;
- (W5Event)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setInfo:(id)info;
@end

@implementation W5Event

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5Event;
  [(W5Event *)&v3 dealloc];
}

- (void)setInfo:(id)info
{
  v45 = *MEMORY[0x277D85DE8];
  info = self->_info;
  if (info != info)
  {

    self->_info = 0;
    v36 = 0;
    if (info && (v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:info requiringSecureCoding:1 error:&v36]) != 0)
    {
      v34 = v6;
      v35 = MEMORY[0x277CCAAC8];
      v33 = MEMORY[0x277CBEB98];
      v32 = objc_opt_class();
      v31 = objc_opt_class();
      v30 = objc_opt_class();
      v29 = objc_opt_class();
      v28 = objc_opt_class();
      v27 = objc_opt_class();
      v26 = objc_opt_class();
      v25 = objc_opt_class();
      v24 = objc_opt_class();
      v23 = objc_opt_class();
      v22 = objc_opt_class();
      v21 = objc_opt_class();
      v20 = objc_opt_class();
      v19 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      self->_info = [v35 unarchivedObjectOfClasses:objc_msgSend(v33 fromData:"setWithObjects:" error:{v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v7, v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0), v34, &v36}];
      if (v36)
      {
        OSLog = W5GetOSLog();
        if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEFAULT))
        {
          v37 = 136315906;
          v38 = "[W5Event setInfo:]";
          v39 = 2080;
          v40 = "W5Event.m";
          v41 = 1024;
          v42 = 36;
          v43 = 2114;
          v44 = v36;
LABEL_9:
          _os_log_send_and_compose_impl();
        }
      }
    }

    else
    {
      v17 = W5GetOSLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 136315906;
        v38 = "[W5Event setInfo:]";
        v39 = 2080;
        v40 = "W5Event.m";
        v41 = 1024;
        v42 = 41;
        v43 = 2114;
        v44 = v36;
        goto LABEL_9;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  [v3 appendFormat:@"[%@] ", W5DescriptionForEventID(self->_eventID)];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateStyle:0];
  [v4 setTimeStyle:2];
  [v4 setLocale:{objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale")}];
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_timestamp];
  if (v5)
  {
    [v3 appendFormat:@"Timestamp=%@, ", objc_msgSend(v4, "stringFromDate:", v5)];
  }

  if (self->_peer)
  {
    [v3 appendFormat:@"Peer=%@, ", self->_peer];
  }

  if (self->_info)
  {
    [v3 appendFormat:@"Info=%@, ", self->_info];
  }

  if ([v3 hasSuffix:{@", "}])
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
  }

  v6 = [v3 copy];

  return v6;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v5.receiver = self;
  v5.super_class = W5Event;
  if (-[W5Event conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([protocol isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [protocol isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToEvent:(id)event
{
  eventID = self->_eventID;
  if (eventID != [event eventID])
  {
    goto LABEL_9;
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v7 = MEMORY[0x277CCABB0];
  [event timestamp];
  LODWORD(peer) = [v6 isEqual:{objc_msgSend(v7, "numberWithDouble:")}];
  if (!peer)
  {
    return peer;
  }

  peer = self->_peer;
  if (peer == [event peer])
  {
    LOBYTE(peer) = 1;
    return peer;
  }

  if (!self->_peer)
  {
LABEL_9:
    LOBYTE(peer) = 0;
    return peer;
  }

  peer = [event peer];
  if (peer)
  {
    v10 = self->_peer;
    peer2 = [event peer];

    LOBYTE(peer) = [(W5Peer *)v10 isEqual:peer2];
  }

  return peer;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5Event *)self isEqualToEvent:equal];
}

- (unint64_t)hash
{
  eventID = self->_eventID;
  v4 = [objc_msgSend(MEMORY[0x277CCABB0] numberWithDouble:{self->_timestamp), "hash"}];
  return v4 ^ eventID ^ [(W5Peer *)self->_peer hash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[W5Event allocWithZone:?]];
  [(W5Event *)v4 setEventID:self->_eventID];
  [(W5Event *)v4 setTimestamp:self->_timestamp];
  [(W5Event *)v4 setInfo:self->_info];
  [(W5Event *)v4 setPeer:self->_peer];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:self->_eventID forKey:@"_eventID"];
  [coder encodeDouble:@"_timestamp" forKey:self->_timestamp];
  [coder encodeObject:self->_info forKey:@"_info"];
  peer = self->_peer;

  [coder encodeObject:peer forKey:@"_peer"];
}

- (W5Event)initWithCoder:(id)coder
{
  v30.receiver = self;
  v30.super_class = W5Event;
  v4 = [(W5Event *)&v30 init];
  if (v4)
  {
    v4->_eventID = [coder decodeIntegerForKey:@"_eventID"];
    [coder decodeDoubleForKey:@"_timestamp"];
    v4->_timestamp = v5;
    v29 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v27 = objc_opt_class();
    v26 = objc_opt_class();
    v25 = objc_opt_class();
    v24 = objc_opt_class();
    v23 = objc_opt_class();
    v22 = objc_opt_class();
    v21 = objc_opt_class();
    v20 = objc_opt_class();
    v19 = objc_opt_class();
    v18 = objc_opt_class();
    v17 = objc_opt_class();
    v16 = objc_opt_class();
    v15 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v4->_info = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v29 forKey:{"setWithObjects:", v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0), @"_info", "copy"}];
    v4->_peer = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(MEMORY[0x277CBEB98] forKey:{"setWithObjects:", objc_opt_class(), 0), @"_peer", "copy"}];
  }

  return v4;
}

@end