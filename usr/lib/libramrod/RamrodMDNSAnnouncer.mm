@interface RamrodMDNSAnnouncer
- (RamrodMDNSAnnouncer)initWithPort:(unsigned __int16)port;
- (RamrodMDNSAnnouncer)initWithPort:(unsigned __int16)port domainName:(id)name hostName:(id)hostName;
- (void)_announceWithTTL:(unsigned int)l;
- (void)_invalidate;
- (void)_resetTimerAndFire:(BOOL)fire;
- (void)activate;
- (void)addHostAlias:(id)alias;
- (void)addRamDiskServiceWithType:(id)type port:(unsigned __int16)port;
- (void)addService:(id)service port:(unsigned __int16)port name:(id)name text:(id)text;
- (void)announce;
- (void)dealloc;
- (void)invalidate;
- (void)removeHostAlias:(id)alias;
- (void)removeRamDiskService;
- (void)removeService:(id)service;
- (void)setFastAnnounce:(BOOL)announce;
@end

@implementation RamrodMDNSAnnouncer

- (RamrodMDNSAnnouncer)initWithPort:(unsigned __int16)port
{
  portCopy = port;
  memset(out, 0, sizeof(out));
  memset(v8, 0, 37);
  uuid_generate_random(out);
  uuid_unparse_upper(out, v8);
  v5 = [NSString stringWithUTF8String:v8];
  v6 = [(RamrodMDNSAnnouncer *)self initWithPort:portCopy domainName:@"local" hostName:v5, *v8, *&v8[16], *&v8[24]];

  return v6;
}

- (RamrodMDNSAnnouncer)initWithPort:(unsigned __int16)port domainName:(id)name hostName:(id)hostName
{
  portCopy = port;
  nameCopy = name;
  hostNameCopy = hostName;
  v39.receiver = self;
  v39.super_class = RamrodMDNSAnnouncer;
  v10 = [(RamrodMDNSAnnouncer *)&v39 init];
  if (!v10)
  {
    v11 = nameCopy;
    v12 = hostNameCopy;
    goto LABEL_7;
  }

  v11 = [nameCopy copy];

  objc_storeStrong(v10 + 9, v11);
  v12 = [hostNameCopy copy];

  objc_storeStrong(v10 + 10, v12);
  *(v10 + 33) = portCopy;
  v13 = objc_alloc_init(NSCountedSet);
  v14 = *(v10 + 1);
  *(v10 + 1) = v13;

  v15 = objc_alloc_init(NSMutableDictionary);
  v16 = *(v10 + 2);
  *(v10 + 2) = v15;

  v17 = objc_alloc_init(NSMutableDictionary);
  v18 = *(v10 + 4);
  *(v10 + 4) = v17;

  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = *(v10 + 3);
  *(v10 + 3) = v19;

  v21 = dispatch_queue_create("com.apple.ramrod.mdns", 0);
  v22 = *(v10 + 6);
  *(v10 + 6) = v21;

  v23 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v10 + 6));
  v24 = *(v10 + 7);
  *(v10 + 7) = v23;

  *(v10 + 32) = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v35[0] = 7708;
  v35[1] = __rev16(portCopy);
  bound_socket = create_bound_socket(v35, 2, 0, 1, 0);
  *(v10 + 10) = bound_socket;
  if (bound_socket != -1 && fcntl(bound_socket, 4, 4) != -1)
  {
    v26 = *(v10 + 7);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3254779904;
    handler[2] = sub_594FC;
    handler[3] = &unk_1AE2F8;
    v27 = v10;
    v34 = v27;
    dispatch_source_set_event_handler(v26, handler);
    v28 = *(v10 + 7);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3254779904;
    v31[2] = sub_59514;
    v31[3] = &unk_1AE2F8;
    v32 = v27;
    dispatch_source_set_cancel_handler(v28, v31);

LABEL_7:
    v29 = v10;
    goto LABEL_8;
  }

  v29 = 0;
LABEL_8:

  return v29;
}

- (void)dealloc
{
  [(RamrodMDNSAnnouncer *)self _invalidate];
  v3.receiver = self;
  v3.super_class = RamrodMDNSAnnouncer;
  [(RamrodMDNSAnnouncer *)&v3 dealloc];
}

- (void)activate
{
  [(RamrodMDNSAnnouncer *)self announce];
  timer = self->_timer;

  dispatch_activate(timer);
}

- (void)setFastAnnounce:(BOOL)announce
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3254779904;
  v4[2] = sub_59624;
  v4[3] = &unk_1AE328;
  announceCopy = announce;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

- (void)announce
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = sub_596C0;
  block[3] = &unk_1AE2F8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = sub_59740;
  block[3] = &unk_1AE2F8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_invalidate
{
  dispatch_source_cancel(self->_timer);
  dispatch_activate(self->_timer);
  if (self->_sock != -1)
  {
    [(RamrodMDNSAnnouncer *)self _goodbye];
    close(self->_sock);
    self->_sock = -1;
  }
}

- (void)_announceWithTTL:(unsigned int)l
{
  sock = self->_sock;
  v5 = self->_hostName;
  v6 = self->_domainName;
  v29 = v5;
  v35 = [NSString stringWithFormat:@"%@.%@.", v5, v6];
  v33 = self->_aliases;
  v30 = self->_services;
  v31 = self->_serviceNames;
  v32 = self->_serviceTXTs;
  if (self->_timerNeedsReset)
  {
    [(RamrodMDNSAnnouncer *)self _resetTimerAndFire:0];
  }

  v60 = 0;
  if (!getifaddrs(&v60))
  {
    v7 = +[NSMutableArray array];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v8 = v33;
    v9 = [(NSCountedSet *)v8 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v9)
    {
      v10 = *v57;
      do
      {
        v11 = 0;
        do
        {
          if (*v57 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [NSString stringWithFormat:@"%@.%@.", *(*(&v56 + 1) + 8 * v11), v6];
          [v7 addObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [(NSCountedSet *)v8 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v9);
    }

    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = "";
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_59C88;
    v42 = sub_59C98;
    v43 = 0;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3254779904;
    v36[2] = sub_59CA0;
    v36[3] = &unk_1AE358;
    v36[4] = v7;
    v36[5] = v35;
    v36[6] = v30;
    v36[7] = v31;
    v36[8] = v29;
    v36[9] = v32;
    v36[10] = v6;
    v36[11] = &v38;
    v37 = sock;
    v36[12] = &v44;
    v36[13] = &v48;
    v36[14] = &v52;
    v13 = objc_retainBlock(v36);
    for (i = v60; i; i = i->ifa_next)
    {
      if (strcmp(v49[3], i->ifa_name))
      {
        (v13[2])(v13);
        ifa_name = i->ifa_name;
        v49[3] = ifa_name;
        v16 = v60;
        if (!v60)
        {
          goto LABEL_18;
        }

        while (1)
        {
          ifa_addr = v16->ifa_addr;
          if (ifa_addr)
          {
            if (ifa_addr->sa_family == 18 && !strcmp(v16->ifa_name, ifa_name))
            {
              break;
            }
          }

          v16 = v16->ifa_next;
          if (!v16)
          {
            goto LABEL_18;
          }
        }

        v19 = *ifa_addr->sa_data;
        if (!*ifa_addr->sa_data)
        {
LABEL_18:
          v18 = __error();
          v19 = 0;
          *v18 = 6;
        }

        *(v45 + 6) = v19;
        v20 = [[RamrodMDNSEncoder alloc] initWithTTL:l];
        v21 = v39[5];
        v39[5] = v20;
      }

      if ((i->ifa_flags & 0x8009) == 0x8001)
      {
        [v39[5] encodeAnyFamily:v35 address:i->ifa_addr];
      }
    }

    (v13[2])(v13);
    if ((v53[3] & 1) == 0)
    {
      ramrod_log_msg("mDNS [%-6s]: no usable interfaces found\n", v22, v23, v24, v25, v26, v27, v28, "");
    }

    freeifaddrs(v60);

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v52, 8);
  }
}

- (void)_resetTimerAndFire:(BOOL)fire
{
  if (self->_fastAnnounce)
  {
    v4 = 1000000000;
  }

  else
  {
    v4 = 20000000000;
  }

  if (fire)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  v6 = dispatch_time(0, v5);
  dispatch_source_set_timer(self->_timer, v6, v4, 0xCA00uLL);
  self->_timerNeedsReset = 0;
}

- (void)addService:(id)service port:(unsigned __int16)port name:(id)name text:(id)text
{
  nameCopy = name;
  textCopy = text;
  v12 = [service copy];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3254779904;
  block[2] = sub_5A334;
  block[3] = &unk_1AE388;
  block[4] = self;
  v18 = v12;
  portCopy = port;
  v19 = nameCopy;
  v20 = textCopy;
  v14 = textCopy;
  v15 = nameCopy;
  v16 = v12;
  dispatch_sync(queue, block);
}

- (void)removeService:(id)service
{
  v4 = [service copy];
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3254779904;
  v7[2] = sub_5A530;
  v7[3] = &unk_1AE3B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)addHostAlias:(id)alias
{
  v4 = [alias copy];
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3254779904;
  v7[2] = sub_5A6B0;
  v7[3] = &unk_1AE3B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)removeHostAlias:(id)alias
{
  v4 = [alias copy];
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3254779904;
  v7[2] = sub_5A794;
  v7[3] = &unk_1AE3B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)addRamDiskServiceWithType:(id)type port:(unsigned __int16)port
{
  portCopy = port;
  typeCopy = type;
  v7 = +[NSMutableArray array];
  sub_5AB0C(v7, @"txtvers", @"1");
  sub_5AB0C(v7, @"type", typeCopy);

  v8 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  CFProperty = IORegistryEntryCreateCFProperty(v8, @"security-domain", 0, 0);
  v10 = IORegistryEntryCreateCFProperty(v8, @"chip-id", 0, 0);
  v11 = IORegistryEntryCreateCFProperty(v8, @"board-id", 0, 0);
  v12 = IORegistryEntryCreateCFProperty(v8, @"unique-chip-id", 0, 0);
  sub_5ABC0(v7, @"SDOM", CFProperty, 0);
  sub_5ABC0(v7, @"CHIP", v10, 16);
  sub_5ABC0(v7, @"BORD", v11, 16);
  if (v12)
  {
    v17 = 0;
    v13 = v7;
    [v12 getBytes:&v17 length:8];
    v14 = sub_5ACC4(@"ECID", v17, 16);
    [v13 addObject:v14];
  }

  IOObjectRelease(v8);
  udid_string = ramrod_create_udid_string();
  v16 = MGCopyAnswer();
  sub_5AB0C(v7, @"UDID", udid_string);
  sub_5AB0C(v7, @"SrNm", v16);
  [(RamrodMDNSAnnouncer *)self addService:@"_apple-ramdisk._tcp" port:portCopy name:udid_string text:v7];
  [(RamrodMDNSAnnouncer *)self addHostAlias:udid_string];
}

- (void)removeRamDiskService
{
  udid_string = ramrod_create_udid_string();
  [(RamrodMDNSAnnouncer *)self removeHostAlias:udid_string];
  [(RamrodMDNSAnnouncer *)self removeService:@"_apple-ramdisk._tcp"];
}

@end