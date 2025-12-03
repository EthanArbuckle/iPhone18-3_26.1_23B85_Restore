@interface TRIXPCActivityCriteria
+ (id)cellularCriteria;
+ (id)clientTriggeredCellularCriteria;
+ (id)clientTriggeredWifiCriteria;
+ (id)fetchExperimentsCriteria;
+ (id)maintenanceCriteria;
@end

@implementation TRIXPCActivityCriteria

+ (id)cellularCriteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86288], 259200);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86358], 3600);
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86390], 0);

  return v2;
}

+ (id)fetchExperimentsCriteria
{
  cellularCriteria = [self cellularCriteria];
  xpc_dictionary_set_int64(cellularCriteria, *MEMORY[0x277D86288], 86400);
  xpc_dictionary_set_BOOL(cellularCriteria, *MEMORY[0x277D86390], 1);

  return cellularCriteria;
}

+ (id)maintenanceCriteria
{
  cellularCriteria = [self cellularCriteria];
  xpc_dictionary_set_BOOL(cellularCriteria, *MEMORY[0x277D86398], 0);
  xpc_dictionary_set_BOOL(cellularCriteria, *MEMORY[0x277D86390], 0);
  xpc_dictionary_set_int64(cellularCriteria, *MEMORY[0x277D86288], 86400);

  return cellularCriteria;
}

+ (id)clientTriggeredCellularCriteria
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_string(v2, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86380], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86390], 0);

  return v2;
}

+ (id)clientTriggeredWifiCriteria
{
  clientTriggeredCellularCriteria = [self clientTriggeredCellularCriteria];
  xpc_dictionary_set_BOOL(clientTriggeredCellularCriteria, *MEMORY[0x277D86390], 1);

  return clientTriggeredCellularCriteria;
}

@end