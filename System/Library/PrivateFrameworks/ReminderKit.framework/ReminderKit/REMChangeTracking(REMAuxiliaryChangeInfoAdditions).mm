@interface REMChangeTracking(REMAuxiliaryChangeInfoAdditions)
@end

@implementation REMChangeTracking(REMAuxiliaryChangeInfoAdditions)

- (void)fetchAuxiliaryChangeInfosOfType:()REMAuxiliaryChangeInfoAdditions withChangeObject:error:.cold.1()
{
  v0 = +[REMLog changeTracking];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_2();
    _os_log_fault_impl(v1, v2, v3, v4, v5, 2u);
  }
}

- (void)fetchAuxiliaryChangeInfosOfType:()REMAuxiliaryChangeInfoAdditions withChangeObject:error:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_3_2(a1))
  {
    *v2 = 138543362;
    *v3 = v4;
    OUTLINED_FUNCTION_4_2(&dword_19A0DB000, v5, v6, "rem_log_fault_if (!changeObject) -- ERROR changeObjectsMap lost track of {auxiliaryChangeInfoObjectID: %{public}@}");
  }
}

- (void)fetchAuxiliaryChangeInfosOfType:()REMAuxiliaryChangeInfoAdditions withChangeObject:error:.cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_3_2(a1))
  {
    *v2 = 138543362;
    *v3 = v4;
    OUTLINED_FUNCTION_4_2(&dword_19A0DB000, v5, v6, "rem_log_fault_if (!data) -- ERROR XPC returned a mapOfData that has no data entry for {auxiliaryChangeInfoObjectID: %{public}@}");
  }
}

@end