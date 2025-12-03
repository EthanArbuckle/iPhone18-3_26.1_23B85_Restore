@interface VKMapView(Munin)
- (__n128)muninMarkerAtCoordinate:()Munin completeMarkerHandler:;
- (void)muninMarkerAtCoordinate:()Munin completeMarkerHandler:;
@end

@implementation VKMapView(Munin)

- (void)muninMarkerAtCoordinate:()Munin completeMarkerHandler:
{

  JUMPOUT(0x1B8C62190);
}

- (__n128)muninMarkerAtCoordinate:()Munin completeMarkerHandler:
{
  a2->n128_u64[0] = &unk_1F2A55FB0;
  a2->n128_u64[1] = MEMORY[0x1B8C62DA0](self->n128_u64[1]);
  result = self[1];
  a2[1] = result;
  a2[2].n128_u64[0] = self[2].n128_u64[0];
  return result;
}

@end