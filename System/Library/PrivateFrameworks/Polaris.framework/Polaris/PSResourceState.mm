@interface PSResourceState
- (id)computeDesiredStride;
- (id)init:(id)init withConfig:(id)config;
@end

@implementation PSResourceState

- (id)init:(id)init withConfig:(id)config
{
  initCopy = init;
  configCopy = config;
  v31.receiver = self;
  v31.super_class = PSResourceState;
  v7 = [(PSResourceState *)&v31 init];
  v8 = v7;
  if (v7)
  {
    [(PSResourceState *)v7 setResourceName:initCopy];
    supportedCadences = [configCopy supportedCadences];
    [(PSResourceState *)v8 setSupportedStrides:supportedCadences];

    defaultStride = [configCopy defaultStride];
    [(PSResourceState *)v8 setDefaultStride:defaultStride];

    [(PSResourceState *)v8 setState:0];
    [(PSResourceState *)v8 setProviderStride:0];
    [(PSResourceState *)v8 setStrideChangeFrameID:0];
    v11 = objc_alloc_init(NSMutableDictionary);
    [(PSResourceState *)v8 setGuaranteedStrideChangeNotification:v11];

    v12 = [NSArray arrayWithObjects:@"scaml_s2bu", @"scamr_s2bu", @"dcaml_s2bu", @"dcamr_s2bu", 0];
    [(PSResourceState *)v8 setResourcesWithStrideChangeNotification:v12];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    supportedStrides = [(PSResourceState *)v8 supportedStrides];
    v14 = [supportedStrides countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v14)
    {
      v15 = *v28;
      do
      {
        v16 = 0;
        do
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(supportedStrides);
          }

          v17 = *(*(&v27 + 1) + 8 * v16);
          v18 = [NSNumber numberWithBool:0];
          guaranteedStrideChangeNotification = [(PSResourceState *)v8 guaranteedStrideChangeNotification];
          [guaranteedStrideChangeNotification setObject:v18 forKeyedSubscript:v17];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [supportedStrides countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v14);
    }

    resourcesWithStrideChangeNotification = [(PSResourceState *)v8 resourcesWithStrideChangeNotification];
    v21 = [resourcesWithStrideChangeNotification containsObject:initCopy];

    if (v21)
    {
      v22 = [NSNumber numberWithBool:1];
      guaranteedStrideChangeNotification2 = [(PSResourceState *)v8 guaranteedStrideChangeNotification];
      [guaranteedStrideChangeNotification2 setObject:v22 forKeyedSubscript:&off_100029958];
    }

    v24 = objc_alloc_init(NSMutableDictionary);
    [(PSResourceState *)v8 setConsumersForStride:v24];

    [(PSResourceState *)v8 setRequestedStrideToProvider:0];
  }

  return v8;
}

- (id)computeDesiredStride
{
  selfCopy = self;
  if ([(NSMutableDictionary *)self->_consumersForStride count])
  {
    if ([(NSMutableDictionary *)selfCopy->_supportedStrides count])
    {
      __src = 0;
      v52 = 0;
      v53 = 0;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v3 = selfCopy->_supportedStrides;
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v47 objects:v58 count:16];
      v40 = selfCopy;
      if (v4)
      {
        v5 = *v48;
        do
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v48 != v5)
            {
              objc_enumerationMutation(v3);
            }

            unsignedIntValue = [*(*(&v47 + 1) + 8 * i) unsignedIntValue];
            v8 = v52;
            if (v52 >= v53)
            {
              v10 = __src;
              v11 = v52 - __src;
              v12 = (v52 - __src) >> 2;
              v13 = v12 + 1;
              if ((v12 + 1) >> 62)
              {
                sub_1000092A8();
              }

              v14 = v53 - __src;
              if ((v53 - __src) >> 1 > v13)
              {
                v13 = v14 >> 1;
              }

              if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v15 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v15 = v13;
              }

              if (v15)
              {
                sub_1000092C0(&__src, v15);
              }

              *(4 * v12) = unsignedIntValue;
              v9 = 4 * v12 + 4;
              memcpy(0, v10, v11);
              v16 = __src;
              __src = 0;
              v52 = v9;
              v53 = 0;
              if (v16)
              {
                operator delete(v16);
              }

              selfCopy = v40;
            }

            else
            {
              *v52 = unsignedIntValue;
              v9 = (v8 + 4);
            }

            v52 = v9;
          }

          v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v47 objects:v58 count:16];
        }

        while (v4);
      }

      std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
      v46[0] = 0;
      v46[1] = 0;
      v45 = v46;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = selfCopy->_consumersForStride;
      if ([(NSMutableDictionary *)obj countByEnumeratingWithState:&v41 objects:v57 count:16])
      {
        *v42;
        *v42;
        v17 = **(&v41 + 1);
        name = [**(&v41 + 1) name];
        v19 = name;
        uTF8String = [name UTF8String];
        [(NSMutableDictionary *)selfCopy->_consumersForStride objectForKeyedSubscript:v17];
        unsignedIntValue2 = [objc_claimAutoreleasedReturnValue() unsignedIntValue];
        v22 = strlen(uTF8String);
        if (v22 < 0x7FFFFFFFFFFFFFF8)
        {
          v23 = v22;
          if (v22 < 0x17)
          {
            HIBYTE(v55) = v22;
            if (v22)
            {
              memmove(&__dst, uTF8String, v22);
            }

            *(&__dst + v23) = 0;
            v56 = unsignedIntValue2;
            sub_10000936C();
          }

          operator new();
        }

        sub_10000235C();
      }

      v24 = v45;
      v25 = *(v45 + 14);
      if (v45 != v46)
      {
        do
        {
          if (*(v24 + 55) < 0)
          {
            sub_1000022B8(&__dst, v24[4], v24[5]);
          }

          else
          {
            __dst = *(v24 + 2);
            v55 = v24[6];
          }

          v56 = *(v24 + 14);
          v25 = sub_100009770(v25, v56);
          if (SHIBYTE(v55) < 0)
          {
            operator delete(__dst);
          }

          v26 = v24[1];
          if (v26)
          {
            do
            {
              v27 = v26;
              v26 = *v26;
            }

            while (v26);
          }

          else
          {
            do
            {
              v27 = v24[2];
              v28 = *v27 == v24;
              v24 = v27;
            }

            while (!v28);
          }

          v24 = v27;
        }

        while (v27 != v46);
      }

      v29 = v52;
      if (v52 != __src)
      {
        v30 = (v52 - __src) >> 2;
        v29 = __src;
        do
        {
          v31 = v30 >> 1;
          v32 = &v29[4 * (v30 >> 1)];
          v34 = *v32;
          v33 = (v32 + 1);
          v30 += ~(v30 >> 1);
          if (v25 < v34)
          {
            v30 = v31;
          }

          else
          {
            v29 = v33;
          }
        }

        while (v30);
      }

      if (v29 != __src)
      {
        while (v29 != __src)
        {
          v36 = *(v29 - 1);
          v29 -= 4;
          v35 = v36;
          if (v36 == v25)
          {
            goto LABEL_54;
          }

          if (!(v25 % v35))
          {
            v25 = v35;
LABEL_54:
            v37 = [NSNumber numberWithUnsignedInt:v25];
            goto LABEL_58;
          }
        }
      }

      v37 = 0;
LABEL_58:
      sub_100009308(&v45, v46[0]);
      if (__src)
      {
        v52 = __src;
        operator delete(__src);
      }
    }

    else
    {
      v37 = [NSNumber numberWithUnsignedInt:0];
    }
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

@end