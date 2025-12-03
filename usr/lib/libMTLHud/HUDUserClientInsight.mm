@interface HUDUserClientInsight
- (HUDUserClientInsight)initWithDescriptor:(HUDInsightDescriptor *)descriptor timeOut:(unint64_t)out isPrototype:(BOOL)prototype;
- (void)update:(HUDInsightDescriptor *)update;
@end

@implementation HUDUserClientInsight

- (HUDUserClientInsight)initWithDescriptor:(HUDInsightDescriptor *)descriptor timeOut:(unint64_t)out isPrototype:(BOOL)prototype
{
  prototypeCopy = prototype;
  v12.receiver = self;
  v12.super_class = HUDUserClientInsight;
  v8 = [(HUDUserClientInsight *)&v12 init];
  v9 = v8;
  if (v8)
  {
    __copy_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_s56_t64w16(&v8->_descriptor, descriptor);
    v9->_timeOut = out;
    if (prototypeCopy)
    {
      v10 = 0;
    }

    else
    {
      v10 = HUDCurrentTimeInNs();
    }

    v9->_timeCreated = v10;
    v9->_timeUpdated = v10;
    v9->_numInstances = !prototypeCopy;
    v9->_enabled = 1;
    v9->_component = HUDReportingComponentFromIdentifier(descriptor->identifier);
  }

  return v9;
}

- (void)update:(HUDInsightDescriptor *)update
{
  __copy_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_s56_t64w16(&self->_descriptor, update);
  self->_timeUpdated = HUDCurrentTimeInNs();
  ++self->_numInstances;
}

@end