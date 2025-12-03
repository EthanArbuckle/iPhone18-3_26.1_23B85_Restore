@interface PSResourceState_v2
- (id)computeDesiredFrequency:(id)frequency;
- (id)init:(id)init withConfig:(id)config;
- (id)setupDefaultFrequencies:(id)frequencies;
- (id)setupProducibleFrequencies:(id)frequencies;
- (id)setupSupportedFrequencies:(id)frequencies;
@end

@implementation PSResourceState_v2

- (id)setupSupportedFrequencies:(id)frequencies
{
  frequenciesCopy = frequencies;
  supportedCadences = [frequenciesCopy supportedCadences];
  v4 = [supportedCadences count];

  if (v4)
  {
    v21 = objc_alloc_init(NSMutableDictionary);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = [&off_100029AD8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v5)
    {
      v22 = v5;
      v20 = *v31;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(&off_100029AD8);
          }

          v6 = *(*(&v30 + 1) + 8 * i);
          v7 = objc_alloc_init(NSMutableDictionary);
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          obj = [frequenciesCopy supportedCadences];
          v8 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v8)
          {
            v9 = *v27;
            do
            {
              for (j = 0; j != v8; j = j + 1)
              {
                if (*v27 != v9)
                {
                  objc_enumerationMutation(obj);
                }

                v11 = *(*(&v26 + 1) + 8 * j);
                if (0xAAAAAAAAAAAAAAABLL * [v11 unsignedLongValue] <= 0x5555555555555555)
                {
                  v13 = 0x5A / [v11 unsignedLongLongValue];
                }

                else
                {
                  unsignedLongLongValue = [v6 unsignedLongLongValue];
                  v13 = unsignedLongLongValue / [v11 unsignedLongLongValue];
                }

                supportedCadences2 = [frequenciesCopy supportedCadences];
                v15 = [supportedCadences2 objectForKey:v11];
                unsignedLongLongValue2 = [v15 unsignedLongLongValue];

                v17 = [NSNumber numberWithUnsignedLongLong:4 * unsignedLongLongValue2];
                v18 = [NSNumber numberWithUnsignedLongLong:v13];
                [v7 setObject:v17 forKeyedSubscript:v18];
              }

              v8 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v8);
          }

          [v21 setObject:v7 forKeyedSubscript:v6];
        }

        v22 = [&off_100029AD8 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)setupDefaultFrequencies:(id)frequencies
{
  frequenciesCopy = frequencies;
  v16 = objc_alloc_init(NSMutableDictionary);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [&off_100029AF0 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(&off_100029AF0);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        defaultStride = [frequenciesCopy defaultStride];
        v9 = 0xAAAAAAAAAAAAAAABLL * [defaultStride unsignedLongLongValue] < 0x5555555555555556;

        if (v9)
        {
          defaultStride2 = [frequenciesCopy defaultStride];
          v12 = 0x5A / [defaultStride2 unsignedLongLongValue];
        }

        else
        {
          unsignedLongLongValue = [v7 unsignedLongLongValue];
          defaultStride2 = [frequenciesCopy defaultStride];
          v12 = unsignedLongLongValue / [defaultStride2 unsignedLongLongValue];
        }

        v13 = [NSNumber numberWithUnsignedLongLong:v12];
        if (v13)
        {
          v14 = [NSNumber numberWithUnsignedLongLong:v12];
          [v16 setObject:v14 forKeyedSubscript:v7];
        }
      }

      v4 = [&off_100029AF0 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  return v16;
}

- (id)setupProducibleFrequencies:(id)frequencies
{
  frequenciesCopy = frequencies;
  if ([frequenciesCopy count])
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = [&off_100029B08 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v4)
    {
      v20 = v4;
      v18 = *v27;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(&off_100029B08);
          }

          v5 = *(*(&v26 + 1) + 8 * i);
          v6 = objc_alloc_init(NSMutableArray);
          [v3 setObject:v6 forKeyedSubscript:v5];

          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v7 = frequenciesCopy;
          v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v8)
          {
            v9 = *v23;
            do
            {
              for (j = 0; j != v8; j = j + 1)
              {
                if (*v23 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = *(*(&v22 + 1) + 8 * j);
                if (0xAAAAAAAAAAAAAAABLL * [v11 unsignedLongValue] <= 0x5555555555555555)
                {
                  v13 = 0x5A / [v11 unsignedLongLongValue];
                }

                else
                {
                  unsignedLongLongValue = [v5 unsignedLongLongValue];
                  v13 = unsignedLongLongValue / [v11 unsignedLongLongValue];
                }

                v14 = [v3 objectForKeyedSubscript:v5];
                v15 = [NSNumber numberWithUnsignedLongLong:v13];
                [v14 addObject:v15];
              }

              v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v8);
          }

          v16 = [v3 objectForKeyedSubscript:v5];
          [v16 sortUsingComparator:&stru_100028D38];
        }

        v20 = [&off_100029B08 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v20);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)init:(id)init withConfig:(id)config
{
  initCopy = init;
  configCopy = config;
  v45.receiver = self;
  v45.super_class = PSResourceState_v2;
  v6 = [(PSResourceState_v2 *)&v45 init];
  v7 = v6;
  if (v6)
  {
    [(PSResourceState_v2 *)v6 setResourceName:initCopy];
    v8 = [(PSResourceState_v2 *)v7 setupSupportedFrequencies:configCopy];
    [(PSResourceState_v2 *)v7 setSupportedFrequencies:v8];

    v9 = [(PSResourceState_v2 *)v7 setupDefaultFrequencies:configCopy];
    [(PSResourceState_v2 *)v7 setDefaultFrequencies:v9];

    [(PSResourceState_v2 *)v7 setProviderFrequency:&off_100029A48];
    [(PSResourceState_v2 *)v7 setRequestedFrequencyToProvider:&off_100029A48];
    baseMSGSyncID = [configCopy baseMSGSyncID];
    [(PSResourceState_v2 *)v7 setBaseMSGSyncID:baseMSGSyncID];

    [(PSResourceState_v2 *)v7 setState:0];
    [(PSResourceState_v2 *)v7 setStrideChangeFrameID:0];
    v11 = objc_alloc_init(NSMutableDictionary);
    [(PSResourceState_v2 *)v7 setGuaranteedStrideChangeNotification:v11];

    v12 = [NSArray arrayWithObjects:@"scaml_s2bu", @"scamr_s2bu", @"dcaml_s2bu", @"dcamr_s2bu", 0];
    [(PSResourceState_v2 *)v7 setResourcesWithStrideChangeNotification:v12];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    supportedFrequencies = [(PSResourceState_v2 *)v7 supportedFrequencies];
    obj = supportedFrequencies;
    v14 = [supportedFrequencies countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v14)
    {
      v35 = *v42;
      do
      {
        v36 = v14;
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v42 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          supportedFrequencies2 = [(PSResourceState_v2 *)v7 supportedFrequencies];
          v18 = [supportedFrequencies2 objectForKeyedSubscript:v16];

          v19 = [v18 countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v19)
          {
            v20 = *v38;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v38 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                v22 = *(*(&v37 + 1) + 8 * j);
                v23 = [NSNumber numberWithBool:0];
                guaranteedStrideChangeNotification = [(PSResourceState_v2 *)v7 guaranteedStrideChangeNotification];
                [guaranteedStrideChangeNotification setObject:v23 forKeyedSubscript:v22];
              }

              v19 = [v18 countByEnumeratingWithState:&v37 objects:v46 count:16];
            }

            while (v19);
          }
        }

        supportedFrequencies = obj;
        v14 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v14);
    }

    resourcesWithStrideChangeNotification = [(PSResourceState_v2 *)v7 resourcesWithStrideChangeNotification];
    v26 = [resourcesWithStrideChangeNotification containsObject:initCopy];

    if (v26)
    {
      v27 = [NSNumber numberWithBool:1];
      guaranteedStrideChangeNotification2 = [(PSResourceState_v2 *)v7 guaranteedStrideChangeNotification];
      [guaranteedStrideChangeNotification2 setObject:v27 forKeyedSubscript:&off_100029A18];
    }

    v29 = objc_alloc_init(NSMutableDictionary);
    [(PSResourceState_v2 *)v7 setConsumersForFrequency:v29];

    [(PSResourceState_v2 *)v7 setRequestedStrideToProvider:0];
    v30 = os_log_create("com.apple.polaris", "orchestrator-Resource");
    [(PSResourceState_v2 *)v7 setLog:v30];
  }

  return v7;
}

- (id)computeDesiredFrequency:(id)frequency
{
  frequencyCopy = frequency;
  selfCopy = self;
  if ([(NSMutableDictionary *)self->_consumersForFrequency count])
  {
    supportedFrequencies = self->_supportedFrequencies;
    if (supportedFrequencies && frequencyCopy)
    {
      [(NSMutableDictionary *)supportedFrequencies objectForKeyedSubscript:frequencyCopy];
      __src = 0;
      v58 = 0;
      v59 = 0;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      obj = v56 = 0u;
      v5 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      if (v5)
      {
        v6 = *v54;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v54 != v6)
            {
              objc_enumerationMutation(obj);
            }

            unsignedIntValue = [*(*(&v53 + 1) + 8 * i) unsignedIntValue];
            v9 = v58;
            if (v58 >= v59)
            {
              v11 = __src;
              v12 = v58 - __src;
              v13 = (v58 - __src) >> 2;
              v14 = v13 + 1;
              if ((v13 + 1) >> 62)
              {
                sub_1000092A8();
              }

              v15 = v59 - __src;
              if ((v59 - __src) >> 1 > v14)
              {
                v14 = v15 >> 1;
              }

              if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v16 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v16 = v14;
              }

              if (v16)
              {
                sub_1000092C0(&__src, v16);
              }

              *(4 * v13) = unsignedIntValue;
              v10 = 4 * v13 + 4;
              memcpy(0, v11, v12);
              v17 = __src;
              __src = 0;
              v58 = v10;
              v59 = 0;
              if (v17)
              {
                operator delete(v17);
              }
            }

            else
            {
              *v58 = unsignedIntValue;
              v10 = (v9 + 4);
            }

            v58 = v10;
          }

          v5 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
        }

        while (v5);
      }

      std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
      v52[0] = 0;
      v52[1] = 0;
      v51 = v52;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v44 = selfCopy->_consumersForFrequency;
      if ([(NSMutableDictionary *)v44 countByEnumeratingWithState:&v47 objects:v60 count:16])
      {
        *v48;
        *v48;
        v18 = **(&v47 + 1);
        name = [**(&v47 + 1) name];
        v20 = name;
        uTF8String = [name UTF8String];
        [(NSMutableDictionary *)selfCopy->_consumersForFrequency objectForKeyedSubscript:v18];
        unsignedIntValue2 = [objc_claimAutoreleasedReturnValue() unsignedIntValue];
        v23 = strlen(uTF8String);
        if (v23 < 0x7FFFFFFFFFFFFFF8)
        {
          v24 = v23;
          if (v23 < 0x17)
          {
            __dst[23] = v23;
            if (v23)
            {
              memmove(__dst, uTF8String, v23);
            }

            __dst[v24] = 0;
            v63 = unsignedIntValue2;
            sub_10000936C();
          }

          operator new();
        }

        sub_10000235C();
      }

      v25 = v51;
      v26 = *(v51 + 14);
      if (v51 == v52)
      {
        LODWORD(v27) = *(v51 + 14);
      }

      else
      {
        do
        {
          if (*(v25 + 55) < 0)
          {
            sub_1000022B8(__dst, v25[4], v25[5]);
          }

          else
          {
            *__dst = *(v25 + 2);
            *&__dst[16] = v25[6];
          }

          v27 = 0;
          v28 = *(v25 + 14);
          v63 = v28;
          if (v26 && v28)
          {
            v27 = v26 / sub_100009770(v26, v28) * v28;
          }

          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

          v29 = v25[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v25[2];
              v31 = *v30 == v25;
              v25 = v30;
            }

            while (!v31);
          }

          v26 = v27;
          v25 = v30;
        }

        while (v30 != v52);
      }

      v33 = __src;
      if (v58 != __src)
      {
        v34 = (v58 - __src) >> 2;
        do
        {
          v35 = v34 >> 1;
          v36 = &v33[4 * (v34 >> 1)];
          v38 = *v36;
          v37 = (v36 + 1);
          v34 += ~(v34 >> 1);
          if (v38 < v27)
          {
            v33 = v37;
          }

          else
          {
            v34 = v35;
          }
        }

        while (v34);
        while (v33 != v58)
        {
          if (*v33 == v27)
          {
            goto LABEL_65;
          }

          if (!(*v33 % v27))
          {
            LODWORD(v27) = *v33;
LABEL_65:
            v32 = [NSNumber numberWithUnsignedLongLong:v27];
            goto LABEL_66;
          }

          v33 += 4;
        }
      }

      v39 = [(PSResourceState_v2 *)selfCopy log];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        resourceName = selfCopy->_resourceName;
        consumersForFrequency = selfCopy->_consumersForFrequency;
        *__dst = 138412546;
        *&__dst[4] = resourceName;
        *&__dst[12] = 2112;
        *&__dst[14] = consumersForFrequency;
        _os_log_unreliable_impl();
      }

      v32 = 0;
LABEL_66:
      sub_100009308(&v51, v52[0]);
      if (__src)
      {
        v58 = __src;
        operator delete(__src);
      }
    }

    else
    {
      v32 = [NSNumber numberWithUnsignedLongLong:-1];
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

@end