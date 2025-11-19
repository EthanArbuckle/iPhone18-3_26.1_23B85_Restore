@interface PBFPosterSnapshotReservation
- (BOOL)isValid;
- (NSError)error;
- (PBFPosterSnapshotReservation)init;
- (PBFPosterSnapshotReservation)initWithError:(id)a3 snapshotContext:(id)a4;
- (PBFPosterSnapshotReservation)initWithFuture:(id)a3 snapshotContext:(id)a4;
- (PBFPosterSnapshotReservation)initWithURL:(id)a3 snapshotContext:(id)a4;
- (id)fetchImageWithError:(id *)a3;
@end

@implementation PBFPosterSnapshotReservation

- (PBFPosterSnapshotReservation)initWithError:(id)a3 snapshotContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [PBFPosterSnapshotReservation initWithError:a2 snapshotContext:?];
  }

  v9 = v8;
  v10 = [MEMORY[0x277D3EC50] futureWithError:v7];
  v11 = [(PBFPosterSnapshotReservation *)self initWithFuture:v10 snapshotContext:v9];

  return v11;
}

- (PBFPosterSnapshotReservation)initWithURL:(id)a3 snapshotContext:(id)a4
{
  v6 = a3;
  v7 = v6;
  v8 = MEMORY[0x277D3EC50];
  if (v6)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__PBFPosterSnapshotReservation_initWithURL_snapshotContext___block_invoke;
    v16[3] = &unk_2782C8958;
    v17 = v6;
    v9 = a4;
    v10 = [v8 futureWithBlock:v16];
  }

  else
  {
    v11 = a4;
    v12 = PFFunctionNameForAddress();
    v13 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v10 = [v8 futureWithError:{v13, 0}];
  }

  v14 = [(PBFPosterSnapshotReservation *)self initWithFuture:v10 snapshotContext:a4];

  return v14;
}

id __60__PBFPosterSnapshotReservation_initWithURL_snapshotContext___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) checkResourceIsReachableAndReturnError:a2])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PBFPosterSnapshotReservation)initWithFuture:(id)a3 snapshotContext:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [PBFPosterSnapshotReservation initWithFuture:a2 snapshotContext:?];
  }

  v10 = v9;
  if (!v9)
  {
    [PBFPosterSnapshotReservation initWithFuture:a2 snapshotContext:?];
  }

  v14.receiver = self;
  v14.super_class = PBFPosterSnapshotReservation;
  v11 = [(PBFPosterSnapshotReservation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetFuture, a3);
    objc_storeStrong(&v12->_snapshotContext, a4);
  }

  return v12;
}

- (PBFPosterSnapshotReservation)init
{
  [(PBFPosterSnapshotReservation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)fetchImageWithError:(id *)a3
{
  v4 = [(PFTFuture *)self->_assetFuture result:?];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D3EF58]);
    v6 = [MEMORY[0x277D3EF60] defaultFormat];
    v7 = [v5 initWithURL:v4 format:v6];

    v8 = [v7 createUIImageWithError:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSError)error
{
  if ([(PFTFuture *)self->_assetFuture isFinished])
  {
    assetFuture = self->_assetFuture;
    v7 = 0;
    v4 = [(PFTFuture *)assetFuture result:&v7];
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isValid
{
  v2 = [(PBFPosterSnapshotReservation *)self error];

  return v2 == 0;
}

- (void)initWithError:(char *)a1 snapshotContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"error", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithFuture:(char *)a1 snapshotContext:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"snapshotContext", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithFuture:(char *)a1 snapshotContext:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"future", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end