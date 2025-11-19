@interface FPSystemMem
- (id)gatherData:(unint64_t)a3 error:(id *)a4;
@end

@implementation FPSystemMem

- (id)gatherData:(unint64_t)a3 error:(id *)a4
{
  host_info64_outCnt = 40;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *host_info64_out = 0u;
  v27 = 0u;
  v6 = mach_host_self();
  v24 = 0u;
  v25 = 0u;
  v23 = 32;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = host_statistics64(v6, 4, host_info64_out, &host_info64_outCnt);
  if (v8)
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v9 = [NSString stringWithFormat:@"Error while collecting sys_footprint values: %s\n", mach_error_string(v8 != 0)];
    v39 = NSLocalizedDescriptionKey;
    v40 = v9;
    v10 = &v40;
    v11 = &v39;
LABEL_7:
    v14 = [NSDictionary dictionaryWithObjects:v10 forKeys:v11 count:1];
    *a4 = [NSError errorWithDomain:@"FPFootprintError" code:0 userInfo:v14];

    a4 = 0;
    goto LABEL_11;
  }

  if (sysctlbyname("vm.swapusage", &v24, &v23, 0, 0))
  {
    if (!a4)
    {
      goto LABEL_11;
    }

    v12 = __error();
    v13 = strerror(*v12);
    v9 = [NSString stringWithFormat:@"Error while collecting swapusage values: %s (%d)\n", v13, *__error()];
    v37 = NSLocalizedDescriptionKey;
    v38 = v9;
    v10 = &v38;
    v11 = &v37;
    goto LABEL_7;
  }

  v15 = vm_page_size * host_info64_out[3];
  v16 = v25 + (v35 + HIDWORD(v34)) * vm_page_size;
  v17 = [[FPAuxData alloc] initWithValue:v16 shouldAggregate:1];
  [v7 setObject:v17 forKeyedSubscript:@"sys_unwired"];

  v18 = [[FPAuxData alloc] initWithValue:v15 shouldAggregate:1];
  [v7 setObject:v18 forKeyedSubscript:@"sys_wired"];

  if (a3)
  {
    v19 = v15 + a3;
    v20 = [[FPAuxData alloc] initWithValue:a3 shouldAggregate:1];
    [v7 setObject:v20 forKeyedSubscript:@"boot_carveout"];

    v21 = [[FPAuxData alloc] initWithValue:v19 + v16 shouldAggregate:1];
    [v7 setObject:v21 forKeyedSubscript:@"sys_footprint"];
  }

  a4 = v7;
LABEL_11:

  return a4;
}

@end