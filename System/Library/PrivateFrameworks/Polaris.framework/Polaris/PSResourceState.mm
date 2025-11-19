@interface PSResourceState
- (id)computeDesiredStride;
- (id)init:(id)a3 withConfig:(id)a4;
@end

@implementation PSResourceState

- (id)init:(id)a3 withConfig:(id)a4
{
  v26 = a3;
  v6 = a4;
  v31.receiver = self;
  v31.super_class = PSResourceState;
  v7 = [(PSResourceState *)&v31 init];
  v8 = v7;
  if (v7)
  {
    [(PSResourceState *)v7 setResourceName:v26];
    v9 = [v6 supportedCadences];
    [(PSResourceState *)v8 setSupportedStrides:v9];

    v10 = [v6 defaultStride];
    [(PSResourceState *)v8 setDefaultStride:v10];

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
    v13 = [(PSResourceState *)v8 supportedStrides];
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v27 + 1) + 8 * v16);
          v18 = [NSNumber numberWithBool:0];
          v19 = [(PSResourceState *)v8 guaranteedStrideChangeNotification];
          [v19 setObject:v18 forKeyedSubscript:v17];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v14);
    }

    v20 = [(PSResourceState *)v8 resourcesWithStrideChangeNotification];
    v21 = [v20 containsObject:v26];

    if (v21)
    {
      v22 = [NSNumber numberWithBool:1];
      v23 = [(PSResourceState *)v8 guaranteedStrideChangeNotification];
      [v23 setObject:v22 forKeyedSubscript:&off_100029958];
    }

    v24 = objc_alloc_init(NSMutableDictionary);
    [(PSResourceState *)v8 setConsumersForStride:v24];

    [(PSResourceState *)v8 setRequestedStrideToProvider:0];
  }

  return v8;
}

- (id)computeDesiredStride
{
  v2 = self;
  if ([(NSMutableDictionary *)self->_consumersForStride count])
  {
    if ([(NSMutableDictionary *)v2->_supportedStrides count])
    {
      __src = 0;
      v52 = 0;
      v53 = 0;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v3 = v2->_supportedStrides;
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v47 objects:v58 count:16];
      v40 = v2;
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

            v7 = [*(*(&v47 + 1) + 8 * i) unsignedIntValue];
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

              *(4 * v12) = v7;
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

              v2 = v40;
            }

            else
            {
              *v52 = v7;
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
      obj = v2->_consumersForStride;
      if ([(NSMutableDictionary *)obj countByEnumeratingWithState:&v41 objects:v57 count:16])
      {
        *v42;
        *v42;
        v17 = **(&v41 + 1);
        v18 = [**(&v41 + 1) name];
        v19 = v18;
        v20 = [v18 UTF8String];
        [(NSMutableDictionary *)v2->_consumersForStride objectForKeyedSubscript:v17];
        v21 = [objc_claimAutoreleasedReturnValue() unsignedIntValue];
        v22 = strlen(v20);
        if (v22 < 0x7FFFFFFFFFFFFFF8)
        {
          v23 = v22;
          if (v22 < 0x17)
          {
            HIBYTE(v55) = v22;
            if (v22)
            {
              memmove(&__dst, v20, v22);
            }

            *(&__dst + v23) = 0;
            v56 = v21;
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