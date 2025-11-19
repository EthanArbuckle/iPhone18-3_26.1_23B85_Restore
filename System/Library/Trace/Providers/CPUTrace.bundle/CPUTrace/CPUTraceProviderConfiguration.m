@interface CPUTraceProviderConfiguration
- (BOOL)fullSystem;
- (CPUTraceProviderConfiguration)initWithOptions:(id)a3 error:(id *)a4;
- (id)validate;
@end

@implementation CPUTraceProviderConfiguration

- (CPUTraceProviderConfiguration)initWithOptions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v45.receiver = self;
  v45.super_class = CPUTraceProviderConfiguration;
  v7 = [(CPUTraceProviderConfiguration *)&v45 init];
  if (v7)
  {
    if (!v6)
    {
      sub_1408(@"No options specified");
      *a4 = v24 = 0;
      goto LABEL_17;
    }

    v8 = objc_alloc_init(NSNumberFormatter);
    [v8 setNumberStyle:1];
    v9 = [v6 mutableCopy];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_14DC;
    v42[3] = &unk_8530;
    v43 = v6;
    v10 = v9;
    v44 = v10;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1548;
    v38[3] = &unk_8558;
    v11 = objc_retainBlock(v42);
    v40 = v11;
    v12 = v8;
    v39 = v12;
    v41 = a4;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1630;
    v36[3] = &unk_8580;
    v13 = objc_retainBlock(v38);
    v37 = v13;
    v14 = objc_retainBlock(v36);
    v7->_appleInternal = os_variant_allows_internal_security_policies();
    v15 = (v13[2])(v13, @"process-id", 0);
    processID = v7->_processID;
    v7->_processID = v15;

    if (*a4)
    {
      goto LABEL_12;
    }

    v7->_stream = (v14[2])(v14, @"stream", 1);
    if (*a4)
    {
      goto LABEL_12;
    }

    v7->_throttle = (v14[2])(v14, @"throttle", 0);
    if (*a4)
    {
      goto LABEL_12;
    }

    v7->_addressCapture = (v14[2])(v14, @"address", 0);
    if (*a4)
    {
      goto LABEL_12;
    }

    v17 = (v13[2])(v13, @"rate-limit", 0);
    rateLimit = v7->_rateLimit;
    v7->_rateLimit = v17;

    if (*a4)
    {
      goto LABEL_12;
    }

    v19 = (v13[2])(v13, @"wrap", 0);
    wrap = v7->_wrap;
    v7->_wrap = v19;

    if (*a4 || ((v13[2])(v13, @"wrap-size", 0), v21 = objc_claimAutoreleasedReturnValue(), wrapSize = v7->_wrapSize, v7->_wrapSize = v21, wrapSize, *a4) || (v7->_prod = (v14[2])(v14, @"prod", 0), *a4) || (v7->_driver = (v14[2])(v14, @"driver", 1), *a4))
    {
LABEL_12:
      v23 = 0;
      goto LABEL_13;
    }

    v35 = (v11[2])(v11, @"systems");
    if (v35)
    {
      v26 = [v35 componentsSeparatedByString:{@", "}];
    }

    else
    {
      v26 = &off_8D98;
    }

    systemNames = v7->_systemNames;
    v7->_systemNames = v26;

    v7->_collectSymbols = (v14[2])(v14, @"collect-symbols", 1);
    v7->_copyImages = (v14[2])(v14, @"copy-images", 1);
    v7->_decode = (v14[2])(v14, @"decode", 1);
    v28 = (v11[2])(v11, @"decode-compression");
    objc_storeStrong(&v7->_decodeCompression, v28);
    v29 = (v13[2])(v13, @"size-limit", 0);
    sizeLimit = v7->_sizeLimit;
    v7->_sizeLimit = v29;

    v31 = (v13[2])(v13, @"trace-buffer-size", 0);
    traceBufferSize = v7->_traceBufferSize;
    v7->_traceBufferSize = v31;

    if (!*a4)
    {
      if (![v10 count])
      {
        v34 = [(CPUTraceProviderConfiguration *)v7 validate];
        *a4 = v34;
        v23 = v34 == 0;
        goto LABEL_25;
      }

      v33 = [NSString stringWithFormat:@"Unable to parse the following provider options: %@", v10];
      *a4 = sub_1408(v33);
    }

    v23 = 0;
LABEL_25:

LABEL_13:
    if (!v23)
    {
      v24 = 0;
      goto LABEL_17;
    }
  }

  v24 = v7;
LABEL_17:

  return v24;
}

- (id)validate
{
  if (-[CPUTraceProviderConfiguration stream](self, "stream") && (-[CPUTraceProviderConfiguration wrap](self, "wrap"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 unsignedLongLongValue], v3, v4))
  {
    v5 = @"Both stream and wrap were specified";
  }

  else if ([(CPUTraceProviderConfiguration *)self prod]&& ![(CPUTraceProviderConfiguration *)self driver])
  {
    v5 = @"For prod, driver must also be specified";
  }

  else
  {
    v6 = [(CPUTraceProviderConfiguration *)self decodeCompression];
    if (!v6 || (v7 = v6, v8 = [(CPUTraceProviderConfiguration *)self decode], v7, (v8 & 1) != 0))
    {
      v9 = [(CPUTraceProviderConfiguration *)self decodeCompression];

      if (v9 && (-[CPUTraceProviderConfiguration decodeCompression](self, "decodeCompression"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [&off_8DB0 containsObject:v10], v10, (v11 & 1) == 0))
      {
        v19 = [(CPUTraceProviderConfiguration *)self decodeCompression];
        v20 = [&off_8DB0 componentsJoinedByString:{@", "}];
        v21 = [NSString stringWithFormat:@"Unsupported compression algorithm: %@. Supported algorithms: %@", v19, v20];
        v18 = sub_1408(v21);
      }

      else
      {
        v12 = objc_opt_new();
        v13 = [(NSArray *)self->_systemNames mutableCopy];
        hwtrace_live_topology();
        hwtrace_live_topology_systems();
        if ([v13 count])
        {
          v14 = [v13 allObjects];
          v15 = [v14 componentsJoinedByString:{@", "}];

          v16 = [v12 componentsJoinedByString:{@", "}];
          v17 = [NSString stringWithFormat:@"Missing system(s): [ %@ ], valid system(s): [ %@ ]", v15, v16];
          v18 = sub_1408(v17);
        }

        else
        {
          v18 = 0;
        }
      }

      goto LABEL_18;
    }

    v5 = @"decode-compression requires decode to be enabled";
  }

  v18 = sub_1408(v5);
LABEL_18:

  return v18;
}

- (BOOL)fullSystem
{
  v3 = [(CPUTraceProviderConfiguration *)self processID];
  if (v3)
  {
    v4 = [(CPUTraceProviderConfiguration *)self processID];
    v5 = [v4 intValue] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end