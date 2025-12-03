@interface PROBundleHandler
- (BOOL)_plugInHasReservedUUID:(id)d;
- (BOOL)dynamicPluginRequestedProtocolArray:(id *)array groupArray:(id *)groupArray plugInArray:(id *)inArray actuallyLoad:(BOOL)load;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPrincipalClassAvailable;
- (BOOL)loadingInProMSRendererTool;
- (BOOL)plugInShouldLoadPlugInInstanceForTheFirstTime:(id)time;
- (PROBundleHandler)initWithBundle:(id)bundle actuallyLoad:(BOOL)load;
- (id)apiForProtocol:(id)protocol;
- (id)plugInGroupWithUUID:(__CFUUID *)d;
- (id)principalClassInstance;
- (void)addPlugIn:(id)in;
- (void)completeRegistrationWithGroups:(id *)groups plugIns:(id *)ins requestedProtocols:(id *)protocols;
- (void)dealloc;
- (void)finishRegisteringPlugIns:(BOOL)ins;
- (void)plugInFirewall:(id)firewall receivedBadMessage:(SEL)message;
- (void)registerAndLoadPlugIns:(BOOL)ins;
- (void)registerDynamicPlugInsAsynch:(id)asynch;
@end

@implementation PROBundleHandler

- (PROBundleHandler)initWithBundle:(id)bundle actuallyLoad:(BOOL)load
{
  loadCopy = load;
  v11.receiver = self;
  v11.super_class = PROBundleHandler;
  v6 = [(PROBundleHandler *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = [(PROBundleHandler *)v6 zone];
    v7->bundle = bundle;
    v7->plugIns = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{v8), "init"}];
    v7->groups = [objc_msgSend(MEMORY[0x277CBEB38] allocWithZone:{v8), "init"}];
    v7->deferralCompletionBlock = 0;
    v7->deferred = 0;
    if (loadCopy)
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    v7->bundleFlags = (*&v7->bundleFlags & 0xFFFFFFFB | v9);
    v7->apiAccessPoint = [[PROPlugInFirewall alloc] initWithProtectedObject:v7 protocol:&unk_287358DD8 secondaryProtocol:0 errorHandler:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PROBundleHandler;
  [(PROBundleHandler *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [(PROBundleHandler *)self isEqualToBundleHandler:equal];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return self->bundle == equal;
    }

    else
    {
      v6.receiver = self;
      v6.super_class = PROBundleHandler;
      return [(PROBundleHandler *)&v6 isEqual:equal];
    }
  }
}

- (BOOL)isPrincipalClassAvailable
{
  infoDictionary = [(NSBundle *)self->bundle infoDictionary];
  if (!infoDictionary || (v4 = -[NSDictionary objectForKey:](infoDictionary, "objectForKey:", @"PlugInKit")) == 0 || (v5 = [v4 objectForKey:@"EmbeddedCode"]) != 0)
  {
    [(NSBundle *)self->bundle principalClass];
    LOBYTE(v5) = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

- (id)principalClassInstance
{
  result = self->principalClassInstance;
  if (result)
  {
    return result;
  }

  principalClass = [(NSBundle *)self->bundle principalClass];
  if (!principalClass)
  {
    v7 = objc_alloc(MEMORY[0x277CBEAC0]);
    v8 = [v7 initWithObjectsAndKeys:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Bundle has no principal class specified.", &stru_2872E16E0, @"PROPlug", *MEMORY[0x277CCA450], self->bundle, @"NSBundle", 0}];
    v9 = MEMORY[0x277CCA9B8];
    v10 = -502;
LABEL_12:
    -[PROBundleHandler reportError:](self, "reportError:", [v9 errorWithDomain:@"PROPlug" code:v10 userInfo:v8]);

    return 0;
  }

  v5 = principalClass;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = objc_alloc(MEMORY[0x277CBEAC0]);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = @"Bundle principal class does not responds to +sharedInstance!";
LABEL_11:
    v14 = [v12 localizedStringForKey:v13 value:&stru_2872E16E0 table:@"PROPlug"];
    v8 = [v11 initWithObjectsAndKeys:{v14, *MEMORY[0x277CCA450], self->bundle, @"NSBundle", 0}];
    v9 = MEMORY[0x277CCA9B8];
    v10 = -503;
    goto LABEL_12;
  }

  sharedInstance = [(objc_class *)v5 sharedInstance];
  self->principalClassInstance = sharedInstance;
  if (!sharedInstance)
  {
    v11 = objc_alloc(MEMORY[0x277CBEAC0]);
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = @"Failed creating an instance of bundle's principal class.";
    goto LABEL_11;
  }

  if (objc_opt_respondsToSelector())
  {
    [(PROPlugInRegistering *)self->principalClassInstance setAPIManager:self->apiAccessPoint];
  }

  return self->principalClassInstance;
}

- (BOOL)_plugInHasReservedUUID:(id)d
{
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"7D976C6A-7F8E-11D9-AF6C-000A95DF1816", @"4894A645-622C-4EAF-B886-8481FC54A9C9", @"AD8AC810-D658-4444-94A6-B7C29767A90C", 0}];
  v5 = [objc_msgSend(d "infoDictionary")];
  if (v5)
  {

    LOBYTE(v5) = [v4 containsObject:v5];
  }

  return v5;
}

- (void)addPlugIn:(id)in
{
  delegate = self->delegate;
  if (!delegate || [(PROBundleHandlerDelegate *)delegate bundleHandler:self shouldAddPlugIn:in])
  {
    [-[PROBundleHandler mutableArrayValueForKey:](self mutableArrayValueForKey:{@"plugIns", "addObject:", in}];
    v6 = self->delegate;

    [(PROBundleHandlerDelegate *)v6 bundleHandler:self didAddPlugIn:in];
  }
}

- (void)registerDynamicPlugInsAsynch:(id)asynch
{
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:asynch];
  [v4 setRemoteObjectInterface:{objc_msgSend(MEMORY[0x277CCAE90], "interfaceWithProtocol:", &unk_28736D770)}];
  [v4 resume];
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_71];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__16;
  v18 = __Block_byref_object_dispose__16;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__16;
  v12 = __Block_byref_object_dispose__16;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = *"";
  v7[2] = __49__PROBundleHandler_registerDynamicPlugInsAsynch___block_invoke_104;
  v7[3] = &unk_279AAA0C0;
  v7[4] = &v14;
  v7[5] = &v8;
  [v5 dynamicRegGroupsAndPlugIns:v7];
  v6 = 0;
  [(PROBundleHandler *)self completeRegistrationWithGroups:v15 + 5 plugIns:v9 + 5 requestedProtocols:&v6];

  [(PROPluginDynamicRegCompletion *)self->setupCallbackObject finishPluginSetupForBundle:self->bundle handler:self];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);
}

id __49__PROBundleHandler_registerDynamicPlugInsAsynch___block_invoke_104(uint64_t a1, void *a2, void *a3)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  result = a3;
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)dynamicPluginRequestedProtocolArray:(id *)array groupArray:(id *)groupArray plugInArray:(id *)inArray actuallyLoad:(BOOL)load
{
  if (!load)
  {
    return 1;
  }

  principalClassInstance = [(PROBundleHandler *)self principalClassInstance];
  if (objc_opt_respondsToSelector())
  {
    v17 = 0;
    *array = [principalClassInstance requestedProtocolsWithError:&v17];
    if (v17)
    {
      v11 = objc_alloc(MEMORY[0x277CBEAC0]);
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = @"Bundle failed dynamically registering requested protocols";
LABEL_12:
      v15 = [v12 localizedStringForKey:v13 value:&stru_2872E16E0 table:@"PROPlug"];
      v16 = [v11 initWithObjectsAndKeys:{v15, *MEMORY[0x277CCA450], self->bundle, @"NSBundle", v17, *MEMORY[0x277CCA7E8], 0}];
      -[PROBundleHandler reportError:](self, "reportError:", [MEMORY[0x277CCA9B8] errorWithDomain:@"PROPlug" code:-505 userInfo:v16]);

      return 0;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = 0;
    *groupArray = [principalClassInstance registeredPlugInGroupsWithError:&v17];
    if (v17)
    {
      v11 = objc_alloc(MEMORY[0x277CBEAC0]);
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = @"Bundle failed dynamically registering plug-in groups";
      goto LABEL_12;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = 0;
    *inArray = [principalClassInstance registeredPlugInsWithError:&v17];
    if (v17)
    {
      v11 = objc_alloc(MEMORY[0x277CBEAC0]);
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = @"Bundle failed dynamically registering plug-ins";
      goto LABEL_12;
    }
  }

  return 1;
}

- (void)completeRegistrationWithGroups:(id *)groups plugIns:(id *)ins requestedProtocols:(id *)protocols
{
  if (!*ins)
  {
    *ins = [(NSBundle *)self->bundle objectForInfoDictionaryKey:@"ProPlugPlugInList"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = objc_alloc(MEMORY[0x277CBEAC0]);
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = @"Bundle's plug-in list should be an array, alas it is not.";
LABEL_51:
    v36 = [v21 localizedStringForKey:v22 value:&stru_2872E16E0 table:@"PROPlug"];
    v39 = [v20 initWithObjectsAndKeys:{v36, *MEMORY[0x277CCA450], self->bundle, @"NSBundle", 0}];
    -[PROBundleHandler reportError:](self, "reportError:", [MEMORY[0x277CCA9B8] errorWithDomain:@"PROPlug" code:-502 userInfo:?]);

    return;
  }

  if (!*groups)
  {
    *groups = [(NSBundle *)self->bundle objectForInfoDictionaryKey:@"ProPlugPlugInGroupList"];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = *groups;
  if (isKindOfClass)
  {
    objectEnumerator = [v10 objectEnumerator];
    v38 = [(PROBundleHandler *)self zone];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      v14 = *MEMORY[0x277CBECE8];
      while (1)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_17;
        }

        v15 = [nextObject2 objectForKey:@"groupName"];
        v16 = [nextObject2 objectForKey:@"uuid"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_17;
        }

        v17 = CFUUIDCreateFromString(v14, v16);
        v18 = v17;
        if (v17)
        {
          if (v15)
          {
            break;
          }
        }

        if (v17)
        {
          goto LABEL_16;
        }

LABEL_17:
        nextObject2 = [objectEnumerator nextObject];
        if (!nextObject2)
        {
          goto LABEL_22;
        }
      }

      if (!-[NSMutableDictionary objectForKey:](self->groups, "objectForKey:", [MEMORY[0x277CCAE60] valueWithPointer:v17]))
      {
        v19 = [[PROPlugInGroup allocWithZone:?]name:"initWithUUID:name:bundle:" bundle:v18, v15, self->bundle];
        -[NSMutableDictionary setObject:forKey:](self->groups, "setObject:forKey:", v19, [MEMORY[0x277CCAE60] valueWithPointer:v18]);
      }

LABEL_16:
      CFRelease(v18);
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (v10)
  {
    v20 = objc_alloc(MEMORY[0x277CBEAC0]);
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = @"Bundle's plug-in group list should be an array, alas it is not.";
    goto LABEL_51;
  }

LABEL_22:
  if (!*protocols)
  {
    *protocols = [(NSBundle *)self->bundle objectForInfoDictionaryKey:@"ProPlugProtocolList"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectEnumerator2 = [*protocols objectEnumerator];
    while (1)
    {
      nextObject3 = [objectEnumerator2 nextObject];
      if (!nextObject3)
      {
        break;
      }

      v25 = nextObject3;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = objc_alloc(MEMORY[0x277CBEAC0]);
        v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = @"Bundle's protocol list should contain dictionaries.";
        goto LABEL_51;
      }

      [v25 objectForKey:@"protocolName"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = objc_alloc(MEMORY[0x277CBEAC0]);
        v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = @"Bundle's protocol list dictionaries need protocols names inside.";
        goto LABEL_51;
      }

      v26 = [v25 objectForKey:@"versions"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = objc_alloc(MEMORY[0x277CBEAC0]);
        v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = @"Bundle's protocol list dictionaries need a version number array.";
        goto LABEL_51;
      }

      objectEnumerator3 = [v26 objectEnumerator];
      while ([objectEnumerator3 nextObject])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v20 = objc_alloc(MEMORY[0x277CBEAC0]);
          v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v22 = @"Bundle's protocol list dictionaries need a version number list with numbers inside.";
          goto LABEL_51;
        }
      }

      v28 = [objc_msgSend(MEMORY[0x277CBEA60] allocWithZone:{-[PROBundleHandler zone](self, "zone")), "initWithArray:copyItems:", *protocols, 1}];
      self->requestedProtocols = v28;
      if (([(PROVersionedAPIAccess *)self->apiManager validateProtocols:v28]& 1) == 0)
      {
        v20 = objc_alloc(MEMORY[0x277CBEAC0]);
        v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v22 = @"Bundle requests protocol that isn't available.";
        goto LABEL_51;
      }
    }
  }

  objectEnumerator4 = [*ins objectEnumerator];
  v30 = [(PROBundleHandler *)self zone];
  nextObject4 = [objectEnumerator4 nextObject];
  if (nextObject4)
  {
    nextObject5 = nextObject4;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = [[PROPlugIn allocWithZone:?]bundle:"initWithDictionary:bundle:delegate:pluginKitPlug:" delegate:nextObject5 pluginKitPlug:self->bundle, self, 0];
        if (v33)
        {
          v34 = [(PROBundleHandler *)self mutableArrayValueForKey:@"plugIns"];
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = *"";
          v40[2] = __78__PROBundleHandler_completeRegistrationWithGroups_plugIns_requestedProtocols___block_invoke;
          v40[3] = &unk_279AAA0F8;
          v40[4] = v33;
          v35 = [v34 indexOfObjectPassingTest:v40];
          if ([(PROBundleHandler *)self _plugInHasReservedUUID:v33])
          {
            NSLog(&cfstr_TheUuidOfThePl.isa, [(PROPlugIn *)v33 displayName], v37);
          }

          else if (v35 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([objc_msgSend(-[PROPlugIn infoDictionary](v33 "infoDictionary")])
            {
              NSLog(&cfstr_BlockedPlugInU.isa, [(PROPlugIn *)v33 uuid], [(PROPlugIn *)v33 displayName]);
            }

            else
            {
              [(PROBundleHandler *)self addPlugIn:v33];
            }
          }

          else
          {
            NSLog(&cfstr_DuplicatePlugI.isa, [(PROPlugIn *)v33 uuid], [(PROPlugIn *)v33 displayName]);
          }
        }
      }

      nextObject5 = [objectEnumerator4 nextObject];
    }

    while (nextObject5);
  }
}

- (BOOL)loadingInProMSRendererTool
{
  v2 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];

  return [v2 isEqualToString:@"com.apple.ProMSRendererTool"];
}

- (void)finishRegisteringPlugIns:(BOOL)ins
{
  insCopy = ins;
  [-[PROBundleHandler mutableArrayValueForKey:](self mutableArrayValueForKey:{@"plugIns", "removeAllObjects"}];
  [(NSMutableDictionary *)self->groups removeAllObjects];
  v5 = [(NSBundle *)self->bundle objectForInfoDictionaryKey:@"ProPlugDictionaryVersion"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v5 floatValue], v6 == 1.0))
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
    v8 = [(NSBundle *)self->bundle objectForInfoDictionaryKey:@"ProPlugDynamicRegistration"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 BOOLValue] || -[PROBundleHandler dynamicPluginRequestedProtocolArray:groupArray:plugInArray:actuallyLoad:](self, "dynamicPluginRequestedProtocolArray:groupArray:plugInArray:actuallyLoad:", &v9, &v10, &v11, insCopy))
    {
      [(PROBundleHandler *)self completeRegistrationWithGroups:&v10 plugIns:&v11 requestedProtocols:&v9];
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PROPlug" code:-502 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Bundle dictionary version is unsupported.", &stru_2872E16E0, @"PROPlug", *MEMORY[0x277CCA450], self->bundle, @"NSBundle", 0)}];

    [(PROBundleHandler *)self reportError:v7];
  }
}

- (void)registerAndLoadPlugIns:(BOOL)ins
{
  insCopy = ins;
  if (![(PROBundleHandler *)self shouldDeferLoading])
  {

    [(PROBundleHandler *)self finishRegisteringPlugIns:insCopy];
  }
}

- (id)apiForProtocol:(id)protocol
{
  protocolCopy = protocol;
  Name = protocol_getName(protocol);
  objectEnumerator = [(NSArray *)self->requestedProtocols objectEnumerator];
  do
  {
    nextObject = [(NSEnumerator *)objectEnumerator nextObject];
    v7 = nextObject;
  }

  while (nextObject && ![objc_msgSend(nextObject objectForKey:{@"protocolName", "isEqualToString:", Name}]);
  result = -[PROVersionedAPIAccess apiForProtocol:versions:](self->apiManager, "apiForProtocol:versions:", &protocolCopy, [v7 objectForKey:@"versions"]);
  if (result)
  {
    v9 = result;
    v10 = [PROPlugInFirewall alloc];
    return [(PROPlugInFirewall *)v10 initWithProtectedObject:v9 protocol:protocolCopy secondaryProtocol:&unk_287357CF8 errorHandler:self];
  }

  return result;
}

- (void)plugInFirewall:(id)firewall receivedBadMessage:(SEL)message
{
  v6 = objc_alloc(MEMORY[0x277CBEAC0]);
  bundle = self->bundle;
  v8 = NSStringFromSelector(message);
  v9 = [v6 initWithObjectsAndKeys:{bundle, @"NSBundle", v8, @"Selector", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Plug-In instance sent bad message.", &stru_2872E16E0, @"PROPlug", *MEMORY[0x277CCA450], 0}];
  -[PROBundleHandler reportError:](self, "reportError:", [MEMORY[0x277CCA9B8] errorWithDomain:@"PROPlug" code:-603 userInfo:v9]);
}

- (id)plugInGroupWithUUID:(__CFUUID *)d
{
  groups = self->groups;
  v4 = [MEMORY[0x277CCAE60] valueWithPointer:d];

  return [(NSMutableDictionary *)groups objectForKey:v4];
}

- (BOOL)plugInShouldLoadPlugInInstanceForTheFirstTime:(id)time
{
  bundleFlags = self->bundleFlags;
  if ((*&bundleFlags & 4) != 0)
  {
    v16[5] = v3;
    v16[6] = v4;
    if ((*&bundleFlags & 2) == 0)
    {
      if (![(PROBundleHandler *)self isPrincipalClassAvailable])
      {
        *&self->bundleFlags |= 3u;
        LOBYTE(principalClassInstance) = 1;
        return principalClassInstance;
      }

      principalClassInstance = [(PROBundleHandler *)self principalClassInstance];
      if (!principalClassInstance)
      {
        self->bundleFlags = (*&self->bundleFlags & 0xFFFFFFFC | 2);
        return principalClassInstance;
      }

      v8 = principalClassInstance;
      v16[0] = 0;
      if (objc_opt_respondsToSelector())
      {
        v9 = [v8 shouldLoadFirstInstanceOfPlugInWithError:v16];
        v10 = v16[0];
        bundleFlags = (*&self->bundleFlags & 0xFFFFFFFC | v9 | 2);
        self->bundleFlags = bundleFlags;
        if (v10)
        {
          self->bundleFlags = (*&bundleFlags & 0xFFFFFFFE);
          v11 = objc_alloc(MEMORY[0x277CBEAC0]);
          v12 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Bundle failed dynamically registering plug-ins", &stru_2872E16E0, @"PROPlug"}];
          v13 = [v11 initWithObjectsAndKeys:{v12, *MEMORY[0x277CCA450], self->bundle, @"NSBundle", v16[0], *MEMORY[0x277CCA7E8], 0}];
          v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"PROPlug" code:-505 userInfo:v13];
          [(PROBundleHandler *)self reportError:v14];

          bundleFlags = self->bundleFlags;
        }
      }

      else
      {
        bundleFlags = (*&self->bundleFlags | 3);
        self->bundleFlags = bundleFlags;
      }
    }

    LOBYTE(principalClassInstance) = *&bundleFlags & 1;
    return principalClassInstance;
  }

  LOBYTE(principalClassInstance) = 0;
  return principalClassInstance;
}

@end