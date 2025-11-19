@interface NWConcrete_nwswifttls
- (void)dealloc;
@end

@implementation NWConcrete_nwswifttls

- (void)dealloc
{
  if (self->metadata)
  {
    nw_protocol_metadata_access_handle();
  }

  v3.receiver = self;
  v3.super_class = NWConcrete_nwswifttls;
  [(NWConcrete_nwswifttls *)&v3 dealloc];
}

@end