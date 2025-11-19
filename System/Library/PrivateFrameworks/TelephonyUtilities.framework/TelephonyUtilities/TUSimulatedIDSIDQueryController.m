@interface TUSimulatedIDSIDQueryController
- (BOOL)currentIDStatusForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8;
- (BOOL)currentRemoteDevicesForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8;
- (BOOL)refreshIDStatusForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8;
- (BOOL)requiredIDStatusForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8;
@end

@implementation TUSimulatedIDSIDQueryController

- (BOOL)currentIDStatusForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8
{
  v10 = a8;
  v11 = _validDictionaryForDestinations(a3);
  (*(a8 + 2))(v10, v11);

  return 1;
}

- (BOOL)refreshIDStatusForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8
{
  v10 = a8;
  v11 = _validDictionaryForDestinations(a3);
  (*(a8 + 2))(v10, v11);

  return 1;
}

- (BOOL)requiredIDStatusForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8
{
  v10 = a8;
  v11 = _validDictionaryForDestinations(a3);
  (*(a8 + 2))(v10, v11);

  return 1;
}

- (BOOL)currentRemoteDevicesForDestinations:(id)a3 service:(id)a4 preferredFromID:(id)a5 listenerID:(id)a6 queue:(id)a7 completionBlock:(id)a8
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v27 = a8;
  v31 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v30 = *v33;
    v29 = *MEMORY[0x1E69A5070];
    do
    {
      v12 = 0;
      do
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        v14 = [objc_alloc(MEMORY[0x1E69A5428]) initWithPrefixedURI:v13];
        v15 = objc_alloc(MEMORY[0x1E69A5248]);
        v16 = [@"push-token" dataUsingEncoding:4];
        v17 = [MEMORY[0x1E695DEF0] data];
        v18 = [MEMORY[0x1E695DF00] date];
        v19 = [MEMORY[0x1E695DF00] date];
        v20 = [v15 initWithURI:v14 clientData:MEMORY[0x1E695E0F8] pushToken:v16 sessionToken:v17 expireDate:v18 refreshDate:v19];

        v21 = objc_alloc(MEMORY[0x1E69A5250]);
        v37 = v29;
        v38 = &unk_1F09C5E60;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v23 = [v21 initWithCapabilitiesMap:v22];

        [v20 setValue:v23 forKey:@"_capabilities"];
        v36 = v20;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        [v31 setObject:v24 forKeyedSubscript:v13];

        ++v12;
      }

      while (v11 != v12);
      v11 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v11);
  }

  v27[2](v27, v31);
  v25 = *MEMORY[0x1E69E9840];
  return 1;
}

@end