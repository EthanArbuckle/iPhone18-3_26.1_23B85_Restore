@interface SMCMOdometer
- (SMCMOdometer)init;
- (void)odometer:(id)odometer didUpdateGpsAvailability:(BOOL)availability;
- (void)startOdometerUpdatesForActivity:(int64_t)activity withHandler:(id)handler;
- (void)stopOdometerUpdates;
@end

@implementation SMCMOdometer

- (SMCMOdometer)init
{
  v3 = objc_alloc_init(MEMORY[0x277CC1CF0]);
  odometer = self->_odometer;
  self->_odometer = v3;

  [(CMOdometer *)self->_odometer setDelegate:self];
  return self;
}

- (void)odometer:(id)odometer didUpdateGpsAvailability:(BOOL)availability
{
  availabilityCopy = availability;
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (availabilityCopy)
      {
        v6 = @"YES";
      }

      v7 = 136315394;
      v8 = "[SMCMOdometer odometer:didUpdateGpsAvailability:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, %@", &v7, 0x16u);
    }
  }
}

- (void)startOdometerUpdatesForActivity:(int64_t)activity withHandler:(id)handler
{
  handlerCopy = handler;
  odometer = [(SMCMOdometer *)self odometer];
  [odometer startOdometerUpdatesForActivity:activity withHandler:handlerCopy];
}

- (void)stopOdometerUpdates
{
  odometer = [(SMCMOdometer *)self odometer];
  [odometer stopOdometerUpdates];
}

@end