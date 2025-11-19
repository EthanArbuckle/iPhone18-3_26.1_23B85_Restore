@interface SetupSignalHandler
@end

@implementation SetupSignalHandler

void ___SetupSignalHandler_block_invoke(id a1)
{
  v1 = dispatch_get_global_queue(0, 0);
  for (i = 0; i != 5; ++i)
  {
    v3 = dword_100001520[i];
    v4 = dispatch_source_create(&_dispatch_source_type_signal, v3, 0, v1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = ___SetupSignalHandler_block_invoke_2;
    handler[3] = &__block_descriptor_36_e5_v8__0l;
    v8 = v3;
    dispatch_source_set_event_handler(v4, handler);
    v5 = signalSources[i];
    signalSources[i] = v4;
    v6 = v4;

    dispatch_resume(v6);
    signal(v3, 1);
  }
}

@end