void (*Apple_Workout_Core_MetricsPublisher.distanceGoalFinishTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.distanceGoalFinishTime.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentIndex.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentIndex.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentDuration.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentDuration.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentDistance.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentDistance.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentPace.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentPace.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentActiveEnergy.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentActiveEnergy.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentTotalEnergy.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentTotalEnergy.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.segmentAveragePower.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.segmentAveragePower.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.segmentIndex.getter(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.segmentIndex : Apple_Workout_Core_MetricsPublisher(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(a2 + v8) = v11;
  }

  v15 = *a5;
  result = swift_beginAccess();
  *(v11 + v15) = v7;
  return result;
}

uint64_t Apple_Workout_Core_MetricsPublisher.segmentIndex.setter(int a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v9);
    *(v4 + v6) = v9;
  }

  v13 = *a2;
  result = swift_beginAccess();
  *(v9 + v13) = a1;
  return result;
}

void (*Apple_Workout_Core_MetricsPublisher.splitIndex.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.splitIndex.modify;
}

void Apple_Workout_Core_MetricsPublisher.segmentIndex.modify(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 84);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v12 + v11) = v10;
  }

  v16 = *a3;
  swift_beginAccess();
  *(v10 + v16) = v5;

  free(v4);
}

void (*Apple_Workout_Core_MetricsPublisher.splitStartDate.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.splitStartDate.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.splitDuration.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.splitDuration.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.splitDistance.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.splitDistance.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.splitPace.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.splitPace.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.splitAveragePower.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.splitAveragePower.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.timerRemainingTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.timerRemainingTime.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.timerRemainingTimeWithOffset.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.timerRemainingTimeWithOffset.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.timerDuration.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return Apple_Workout_Core_MetricsPublisher.timerDuration.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.currentStrideLength.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.currentStrideLength.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.averageStrideLength.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.averageStrideLength.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.currentVerticalOscillation.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.currentVerticalOscillation.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.averageVerticalOscillation.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.averageVerticalOscillation.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.currentGroundContactTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.currentGroundContactTime.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.averageGroundContactTime.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.averageGroundContactTime.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.platterPublisher.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  }

  *a1 = MEMORY[0x277D84F90];
  v11 = a1 + *(v9 + 20);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.platterPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  }

  *a2 = MEMORY[0x277D84F90];
  v12 = a2 + *(v10 + 20);
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.platterPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.platterPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.platterPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v19 = v14 + *(v9 + 20);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.platterPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.goalPublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  v11 = a1 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.goalPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  v12 = a2 + *(v10 + 24);
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.goalPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.goalPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.goalPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 12) = 0;
    v19 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.goalPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v1;
  }

  outlined copy of Data?(v2, v3);
  return v4;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v3[1];
  }

  *a2 = v6;
  a2[1] = v7;
  return outlined copy of Data?(v4, v5);
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes : Apple_Workout_Core_MetricsPublisher(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  outlined copy of Data._Representation(v3, v4);
  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v8);
    *(a2 + v5) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  *v12 = v3;
  v12[1] = v4;
  return outlined consume of Data?(v13, v14);
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v9);
    *(v3 + v6) = v9;
  }

  v13 = (v9 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = a1;
  v13[1] = a2;
  return outlined consume of Data?(v14, v15);
}

void (*Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v6;
  }

  v10 = 0xC000000000000000;
  if (v8 >> 60 != 15)
  {
    v10 = v6[1];
  }

  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  outlined copy of Data?(v7, v8);
  return Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes.modify;
}

void Apple_Workout_Core_MetricsPublisher.workoutIdentifierBytes.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    outlined copy of Data._Representation(*(*a1 + 72), v5);
    v7 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v2 + 96);
      v11 = *(v2 + 88);
      v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v9 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v9);
      *(v11 + v10) = v9;
    }

    v15 = (v9 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
    swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    *v15 = v3;
    v15[1] = v5;
    outlined consume of Data?(v16, v17);
    outlined consume of Data._Representation(*(v2 + 72), *(v2 + 80));
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v20);
      *(v22 + v21) = v20;
    }

    v26 = (v20 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
    swift_beginAccess();
    v27 = *v26;
    v28 = v26[1];
    *v26 = v3;
    v26[1] = v5;
    outlined consume of Data?(v27, v28);
  }

  free(v2);
}

BOOL Apple_Workout_Core_MetricsPublisher.hasWorkoutIdentifierBytes.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes;
  swift_beginAccess();
  return *(v1 + 8) >> 60 != 15;
}

Swift::Void __swiftcall Apple_Workout_Core_MetricsPublisher.clearWorkoutIdentifierBytes()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v5;
  }

  v9 = (v5 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = xmmword_20B449A80;
  outlined consume of Data?(v10, v11);
}

uint64_t Apple_Workout_Core_MetricsPublisher.raceInformationPublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v11 = a1 + *(v9 + 32);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.raceInformationPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.raceInformationPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.raceInformationPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    v19 = v14 + *(v9 + 32);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.raceInformationPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.racePositionStatePublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  v11 = a1 + *(v9 + 40);
  UnknownStorage.init()();
  v12 = *(v9 + 44);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.racePositionStatePublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.racePositionStatePublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  v15 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.racePositionStatePublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0;
    v19 = v14 + *(v9 + 40);
    UnknownStorage.init()();
    v20 = *(v9 + 44);
    v21 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
    (*(*(v21 - 8) + 56))(v14 + v20, 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.racePositionStatePublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.locationPositionPublisher.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  }

  v11 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v11;
  v12 = &a1[*(v9 + 24)];
  UnknownStorage.init()();
  v13 = *(v9 + 28);
  v14 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.locationPositionPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  }

  v12 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v12;
  v13 = &a2[*(v10 + 24)];
  UnknownStorage.init()();
  v14 = *(v10 + 28);
  v15 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.locationPositionPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.locationPositionPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.locationPositionPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 1) = v19;
    v20 = &v14[*(v9 + 24)];
    UnknownStorage.init()();
    v21 = *(v9 + 28);
    v22 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
    (*(*(v22 - 8) + 56))(&v14[v21], 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.locationPositionPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.waterTemperatureMetricsPublisher.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v10 = *(*(v9 - 1) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  }

  *a1 = 0;
  v11 = &a1[v9[5]];
  UnknownStorage.init()();
  v12 = &a1[v9[6]];
  *v12 = 0;
  v12[8] = 1;
  v13 = &a1[v9[7]];
  *v13 = 0;
  v13[8] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.waterTemperatureMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.waterTemperatureMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.waterTemperatureMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v19 = &v14[v9[5]];
    UnknownStorage.init()();
    v20 = &v14[v9[6]];
    *v20 = 0;
    v20[8] = 1;
    v21 = &v14[v9[7]];
    *v21 = 0;
    v21[8] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.waterTemperatureMetricsPublisher.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.descent.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.descent.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.downhillRunCount.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount);
  swift_beginAccess();
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.downhillRunCount : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  result = swift_beginAccess();
  v5 = *v3;
  if (*(v3 + 4))
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.downhillRunCount : Apple_Workout_Core_MetricsPublisher(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(a2 + v4) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  result = swift_beginAccess();
  *v11 = v3;
  *(v11 + 4) = 0;
  return result;
}

uint64_t Apple_Workout_Core_MetricsPublisher.downhillRunCount.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(v2 + v4) = v7;
  }

  v11 = v7 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  result = swift_beginAccess();
  *v11 = a1;
  *(v11 + 4) = 0;
  return result;
}

void (*Apple_Workout_Core_MetricsPublisher.downhillRunCount.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Apple_Workout_Core_MetricsPublisher.downhillRunCount.modify;
}

void Apple_Workout_Core_MetricsPublisher.downhillRunCount.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v13 = v7 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  *v13 = v2;
  *(v13 + 4) = 0;

  free(v1);
}

BOOL Apple_Workout_Core_MetricsPublisher.hasDownhillRunCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  return (*(v1 + 4) & 1) == 0;
}

Swift::Void __swiftcall Apple_Workout_Core_MetricsPublisher.clearDownhillRunCount()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v5);
    *(v1 + v2) = v5;
  }

  v9 = v5 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  *v9 = 0;
  *(v9 + 4) = 1;
}

uint64_t Apple_Workout_Core_MetricsPublisher.trackRunningMetricsPublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v9 + 24);
  v14 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.trackRunningMetricsPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  }

  UnknownStorage.init()();
  v12 = *(v10 + 20);
  v13 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = *(v10 + 24);
  v15 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.trackRunningMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.trackRunningMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  v15 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.trackRunningMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo();
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = *(v9 + 24);
    v22 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator();
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.trackRunningMetricsPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutBuddyStatePublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v11 = a1 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.workoutBuddyStatePublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v12 = a2 + *(v10 + 24);
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.workoutBuddyStatePublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v16);
    *(a2 + v13) = v16;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v16 + v20, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutBuddyStatePublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v2 + v8) = v11;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  v15 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v11 + v16, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.workoutBuddyStatePublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    v19 = v14 + *(v9 + 24);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.workoutBuddyStatePublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_MetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t static Apple_Workout_Core_ConfigurationType._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Apple_Workout_Core_MetricsPublisher._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  v1 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  v2 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  v4 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  v6 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  v8 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace) = 0;
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  v10 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData) = MEMORY[0x277D84F90];
  v13 = (v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  v17 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  (*(*(v17 - 8) + 56))(v0 + v16, 1, 1, v17);
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed) = 0;
  v18 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  v19 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  (*(*(v19 - 8) + 56))(v0 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  v21 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  (*(*(v21 - 8) + 56))(v0 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  v23 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  (*(*(v23 - 8) + 56))(v0 + v22, 1, 1, v23);
  v24 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex) = 0;
  v25 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration) = 0;
  v26 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  v33 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  (*(*(v33 - 8) + 56))(v0 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  v35 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  (*(*(v35 - 8) + 56))(v0 + v34, 1, 1, v35);
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes) = xmmword_20B449A80;
  v36 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  v37 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  (*(*(v37 - 8) + 56))(v0 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  v39 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  (*(*(v39 - 8) + 56))(v0 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  v41 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  (*(*(v41 - 8) + 56))(v0 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  v43 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  (*(*(v43 - 8) + 56))(v0 + v42, 1, 1, v43);
  v44 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
  *v44 = 0;
  *(v44 + 8) = 1;
  v45 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  *v45 = 0;
  *(v45 + 4) = 1;
  v46 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  v47 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  (*(*(v47 - 8) + 56))(v0 + v46, 1, 1, v47);
  v48 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  v49 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  (*(*(v49 - 8) + 56))(v0 + v48, 1, 1, v49);
  return v0;
}

uint64_t Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v352 = &v280 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v351 = &v280 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v350 = &v280 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v349 = &v280 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v348 = &v280 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v347 = &v280 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v346 = &v280 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v345 = &v280 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v334 = &v280 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v330 = &v280 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v326 = &v280 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v320 = &v280 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v306 = &v280 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v297 = &v280 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v293 = &v280 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v288 = &v280 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v283 = &v280 - v53;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  v54 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  v281 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  v55 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  (*(*(v55 - 8) + 56))(v1 + v54, 1, 1, v55);
  v56 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  v284 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  v57 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  (*(*(v57 - 8) + 56))(v1 + v56, 1, 1, v57);
  v58 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  v285 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  v59 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  (*(*(v59 - 8) + 56))(v1 + v58, 1, 1, v59);
  v60 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  v286 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  v61 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  (*(*(v61 - 8) + 56))(v1 + v60, 1, 1, v61);
  v287 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance) = 0;
  v289 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer) = 0;
  v290 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace) = 0;
  v291 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace) = 0;
  v292 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace) = 0;
  v294 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace) = 0;
  v295 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace) = 0;
  v62 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  v296 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  v63 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  (*(*(v63 - 8) + 56))(v1 + v62, 1, 1, v63);
  v64 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
  *v64 = 0;
  *(v64 + 8) = 1;
  v65 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
  v298 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
  *v65 = 0;
  *(v65 + 8) = 1;
  v299 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData) = MEMORY[0x277D84F90];
  v66 = (v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  *v66 = 0;
  v66[1] = 0xE000000000000000;
  v67 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
  v300 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
  *v67 = 0;
  *(v67 + 8) = 1;
  v68 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
  v301 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
  *v68 = 0;
  *(v68 + 8) = 1;
  v69 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  v302 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  v70 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  (*(*(v70 - 8) + 56))(v1 + v69, 1, 1, v70);
  v303 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed) = 0;
  v71 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  v304 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  v72 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  (*(*(v72 - 8) + 56))(v1 + v71, 1, 1, v72);
  v73 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  v305 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  v74 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  (*(*(v74 - 8) + 56))(v1 + v73, 1, 1, v74);
  v75 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  v307 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  v76 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  (*(*(v76 - 8) + 56))(v1 + v75, 1, 1, v76);
  v77 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
  v308 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
  *v77 = 0;
  *(v77 + 8) = 1;
  v309 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex) = 0;
  v310 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration) = 0;
  v311 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance) = 0;
  v312 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace) = 0;
  v313 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy) = 0;
  v314 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy) = 0;
  v315 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower) = 0;
  v316 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex) = 0;
  v78 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  v317 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  *v78 = 0;
  *(v78 + 8) = 1;
  v318 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration) = 0;
  v319 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance) = 0;
  v321 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace) = 0;
  v322 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower) = 0;
  v323 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime) = 0;
  v324 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset) = 0;
  v325 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration) = 0;
  v79 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
  v327 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
  *v79 = 0;
  *(v79 + 8) = 1;
  v80 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
  v328 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
  *v80 = 0;
  *(v80 + 8) = 1;
  v81 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
  v329 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
  *v81 = 0;
  *(v81 + 8) = 1;
  v82 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
  v331 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
  *v82 = 0;
  *(v82 + 8) = 1;
  v83 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
  v332 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
  *v83 = 0;
  *(v83 + 8) = 1;
  v84 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
  v333 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
  *v84 = 0;
  *(v84 + 8) = 1;
  v85 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  v335 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  v86 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  (*(*(v86 - 8) + 56))(v1 + v85, 1, 1, v86);
  v87 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  v336 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  v88 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  (*(*(v88 - 8) + 56))(v1 + v87, 1, 1, v88);
  v337 = (v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes) = xmmword_20B449A80;
  v89 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  v338 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  v90 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  (*(*(v90 - 8) + 56))(v1 + v89, 1, 1, v90);
  v91 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  v339 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  v92 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  (*(*(v92 - 8) + 56))(v1 + v91, 1, 1, v92);
  v93 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  v340 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  v94 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  (*(*(v94 - 8) + 56))(v1 + v93, 1, 1, v94);
  v95 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  v341 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  v96 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  (*(*(v96 - 8) + 56))(v1 + v95, 1, 1, v96);
  v97 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
  v342 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
  *v97 = 0;
  *(v97 + 8) = 1;
  v98 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  v282 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  *v98 = 0;
  *(v98 + 4) = 1;
  v99 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  v344 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  v100 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  (*(*(v100 - 8) + 56))(v1 + v99, 1, 1, v100);
  v101 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  v343 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  v102 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  (*(*(v102 - 8) + 56))(v1 + v101, 1, 1, v102);
  swift_beginAccess();
  LOBYTE(v101) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v101;
  swift_beginAccess();
  v103 = *(a1 + 24);
  v104 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v103;
  *(v1 + 32) = v104;
  swift_beginAccess();
  v105 = *(a1 + 40);
  v106 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v105;
  *(v1 + 48) = v106;
  swift_beginAccess();
  LOBYTE(v105) = *(a1 + 49);
  swift_beginAccess();
  *(v1 + 49) = v105;
  v107 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  v108 = v283;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v107, v283, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v109 = v281;
  swift_beginAccess();

  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v108, v1 + v109, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  swift_endAccess();
  v110 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  v111 = v288;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v110, v288, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v112 = v284;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v111, v1 + v112, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  swift_endAccess();
  v113 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  v114 = v293;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v113, v293, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v115 = v285;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v114, v1 + v115, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  swift_endAccess();
  v116 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  v117 = v297;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v116, v297, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v118 = v286;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v117, v1 + v118, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  swift_endAccess();
  v119 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
  swift_beginAccess();
  v120 = *(a1 + v119);
  v121 = v287;
  swift_beginAccess();
  *(v1 + v121) = v120;
  v122 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
  swift_beginAccess();
  v123 = *(a1 + v122);
  v124 = v289;
  swift_beginAccess();
  *(v1 + v124) = v123;
  v125 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
  swift_beginAccess();
  v126 = *(a1 + v125);
  v127 = v290;
  swift_beginAccess();
  *(v1 + v127) = v126;
  v128 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
  swift_beginAccess();
  v129 = *(a1 + v128);
  v130 = v291;
  swift_beginAccess();
  *(v1 + v130) = v129;
  v131 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
  swift_beginAccess();
  v132 = *(a1 + v131);
  v133 = v292;
  swift_beginAccess();
  *(v1 + v133) = v132;
  v134 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
  swift_beginAccess();
  v135 = *(a1 + v134);
  v136 = v294;
  swift_beginAccess();
  *(v1 + v136) = v135;
  v137 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
  swift_beginAccess();
  v138 = *(a1 + v137);
  v139 = v295;
  swift_beginAccess();
  *(v1 + v139) = v138;
  v140 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  v141 = v306;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v140, v306, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v142 = v296;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v141, v1 + v142, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  swift_endAccess();
  v143 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain);
  swift_beginAccess();
  v144 = *v143;
  LOBYTE(v143) = *(v143 + 8);
  swift_beginAccess();
  *v64 = v144;
  *(v64 + 8) = v143;
  v145 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation);
  swift_beginAccess();
  v146 = *v145;
  LOBYTE(v145) = *(v145 + 8);
  v147 = v298;
  swift_beginAccess();
  *v147 = v146;
  *(v147 + 8) = v145;
  v148 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  v149 = *(a1 + v148);
  v150 = v299;
  swift_beginAccess();
  v151 = *(v1 + v150);
  *(v1 + v150) = v149;

  v152 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v154 = *v152;
  v153 = v152[1];
  swift_beginAccess();
  v155 = v66[1];
  *v66 = v154;
  v66[1] = v153;

  v156 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence);
  swift_beginAccess();
  v157 = *v156;
  LOBYTE(v156) = *(v156 + 8);
  v158 = v300;
  swift_beginAccess();
  *v158 = v157;
  *(v158 + 8) = v156;
  v159 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence);
  swift_beginAccess();
  v160 = *v159;
  LOBYTE(v159) = *(v159 + 8);
  v161 = v301;
  swift_beginAccess();
  *v161 = v160;
  *(v161 + 8) = v159;
  v162 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  v163 = v320;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v162, v320, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v164 = v302;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v163, v1 + v164, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  swift_endAccess();
  v165 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  swift_beginAccess();
  v166 = *(a1 + v165);
  v167 = v303;
  swift_beginAccess();
  *(v1 + v167) = v166;
  v168 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  v169 = v326;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v168, v326, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v170 = v304;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v169, v1 + v170, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  swift_endAccess();
  v171 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  v172 = v330;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v171, v330, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v173 = v305;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v172, v1 + v173, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  swift_endAccess();
  v174 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  v175 = v334;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v174, v334, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v176 = v307;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v175, v1 + v176, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  swift_endAccess();
  v177 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime);
  swift_beginAccess();
  v178 = *v177;
  LOBYTE(v177) = *(v177 + 8);
  v179 = v308;
  swift_beginAccess();
  *v179 = v178;
  *(v179 + 8) = v177;
  v180 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  swift_beginAccess();
  LODWORD(v180) = *(a1 + v180);
  v181 = v309;
  swift_beginAccess();
  *(v1 + v181) = v180;
  v182 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  swift_beginAccess();
  v183 = *(a1 + v182);
  v184 = v310;
  swift_beginAccess();
  *(v1 + v184) = v183;
  v185 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  swift_beginAccess();
  v186 = *(a1 + v185);
  v187 = v311;
  swift_beginAccess();
  *(v1 + v187) = v186;
  v188 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  swift_beginAccess();
  v189 = *(a1 + v188);
  v190 = v312;
  swift_beginAccess();
  *(v1 + v190) = v189;
  v191 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  swift_beginAccess();
  v192 = *(a1 + v191);
  v193 = v313;
  swift_beginAccess();
  *(v1 + v193) = v192;
  v194 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  swift_beginAccess();
  v195 = *(a1 + v194);
  v196 = v314;
  swift_beginAccess();
  *(v1 + v196) = v195;
  v197 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  swift_beginAccess();
  v198 = *(a1 + v197);
  v199 = v315;
  swift_beginAccess();
  *(v1 + v199) = v198;
  v200 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  swift_beginAccess();
  LODWORD(v200) = *(a1 + v200);
  v201 = v316;
  swift_beginAccess();
  *(v1 + v201) = v200;
  v202 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate);
  swift_beginAccess();
  v203 = *v202;
  LOBYTE(v202) = *(v202 + 8);
  v204 = v317;
  swift_beginAccess();
  *v204 = v203;
  *(v204 + 8) = v202;
  v205 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  swift_beginAccess();
  v206 = *(a1 + v205);
  v207 = v318;
  swift_beginAccess();
  *(v1 + v207) = v206;
  v208 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  swift_beginAccess();
  v209 = *(a1 + v208);
  v210 = v319;
  swift_beginAccess();
  *(v1 + v210) = v209;
  v211 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  swift_beginAccess();
  v212 = *(a1 + v211);
  v213 = v321;
  swift_beginAccess();
  *(v1 + v213) = v212;
  v214 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  swift_beginAccess();
  v215 = *(a1 + v214);
  v216 = v322;
  swift_beginAccess();
  *(v1 + v216) = v215;
  v217 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  swift_beginAccess();
  v218 = *(a1 + v217);
  v219 = v323;
  swift_beginAccess();
  *(v1 + v219) = v218;
  v220 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  swift_beginAccess();
  v221 = *(a1 + v220);
  v222 = v324;
  swift_beginAccess();
  *(v1 + v222) = v221;
  v223 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  swift_beginAccess();
  v224 = *(a1 + v223);
  v225 = v325;
  swift_beginAccess();
  *(v1 + v225) = v224;
  v226 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength);
  swift_beginAccess();
  v227 = *v226;
  LOBYTE(v226) = *(v226 + 8);
  v228 = v327;
  swift_beginAccess();
  *v228 = v227;
  *(v228 + 8) = v226;
  v229 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength);
  swift_beginAccess();
  v230 = *v229;
  LOBYTE(v229) = *(v229 + 8);
  v231 = v328;
  swift_beginAccess();
  *v231 = v230;
  *(v231 + 8) = v229;
  v232 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation);
  swift_beginAccess();
  v233 = *v232;
  LOBYTE(v232) = *(v232 + 8);
  v234 = v329;
  swift_beginAccess();
  *v234 = v233;
  *(v234 + 8) = v232;
  v235 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation);
  swift_beginAccess();
  v236 = *v235;
  LOBYTE(v235) = *(v235 + 8);
  v237 = v331;
  swift_beginAccess();
  *v237 = v236;
  *(v237 + 8) = v235;
  v238 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime);
  swift_beginAccess();
  v239 = *v238;
  LOBYTE(v238) = *(v238 + 8);
  v240 = v332;
  swift_beginAccess();
  *v240 = v239;
  *(v240 + 8) = v238;
  v241 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime);
  swift_beginAccess();
  v242 = *v241;
  LOBYTE(v241) = *(v241 + 8);
  v243 = v333;
  swift_beginAccess();
  *v243 = v242;
  *(v243 + 8) = v241;
  v244 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  v245 = v345;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v244, v345, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v246 = v335;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v245, v1 + v246, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  swift_endAccess();
  v247 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  v248 = v346;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v247, v346, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v249 = v336;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v248, v1 + v249, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  swift_endAccess();
  v250 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v252 = *v250;
  v251 = v250[1];
  v253 = v337;
  swift_beginAccess();
  v254 = *v253;
  v255 = v253[1];
  *v253 = v252;
  v253[1] = v251;
  outlined copy of Data?(v252, v251);
  outlined consume of Data?(v254, v255);
  v256 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  v257 = v347;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v256, v347, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v258 = v338;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v257, v1 + v258, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  swift_endAccess();
  v259 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  v260 = v348;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v259, v348, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v261 = v339;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v260, v1 + v261, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  swift_endAccess();
  v262 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  v263 = v349;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v262, v349, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v264 = v340;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v263, v1 + v264, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  swift_endAccess();
  v265 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  v266 = v350;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v265, v350, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v267 = v341;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v266, v1 + v267, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  swift_endAccess();
  v268 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent);
  swift_beginAccess();
  v269 = *v268;
  LOBYTE(v268) = *(v268 + 8);
  v270 = v342;
  swift_beginAccess();
  *v270 = v269;
  *(v270 + 8) = v268;
  v271 = a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  LODWORD(v269) = *v271;
  LOBYTE(v271) = *(v271 + 4);
  v272 = v282;
  swift_beginAccess();
  *v272 = v269;
  *(v272 + 4) = v271;
  v273 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  v274 = v351;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v273, v351, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v275 = v344;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v274, v1 + v275, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  swift_endAccess();
  v276 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  v277 = v352;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v276, v352, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);

  v278 = v343;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v277, v1 + v278, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t Apple_Workout_Core_MetricsPublisher._StorageClass.deinit()
{
  v1 = *(v0 + 32);

  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v2 = *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData);

  v3 = *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit + 8);

  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes), *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes + 8));
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  return v0;
}

uint64_t Apple_Workout_Core_MetricsPublisher._StorageClass.__deallocating_deinit()
{
  v0 = *Apple_Workout_Core_MetricsPublisher._StorageClass.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v12);
    *(v4 + v8) = v11;
  }

  return closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(v11, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        closure #1 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 2:
        closure #2 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 3:
        closure #3 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 4:
        closure #4 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 5:
        closure #5 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 6:
        closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 7:
        closure #7 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 8:
        closure #8 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 10:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
        goto LABEL_3;
      case 11:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
        goto LABEL_3;
      case 12:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
        goto LABEL_3;
      case 13:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
        goto LABEL_3;
      case 14:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
        goto LABEL_3;
      case 15:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
        goto LABEL_3;
      case 16:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
        goto LABEL_3;
      case 17:
        closure #16 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 18:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
        goto LABEL_66;
      case 19:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
        goto LABEL_66;
      case 20:
        closure #19 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 21:
        v14 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit;
        v15 = MEMORY[0x277D217D8];
        goto LABEL_62;
      case 22:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
        goto LABEL_66;
      case 23:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
        goto LABEL_66;
      case 24:
        closure #23 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 25:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
        goto LABEL_3;
      case 26:
        closure #25 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 27:
        closure #26 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 28:
        closure #27 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 30:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
        goto LABEL_66;
      case 31:
        v13 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
        goto LABEL_64;
      case 32:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
        goto LABEL_3;
      case 33:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
        goto LABEL_3;
      case 34:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
        goto LABEL_3;
      case 35:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
        goto LABEL_3;
      case 36:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
        goto LABEL_3;
      case 37:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
        goto LABEL_3;
      case 38:
        v13 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
LABEL_64:
        closure #29 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4, v13);
        continue;
      case 39:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
        goto LABEL_66;
      case 40:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
        goto LABEL_3;
      case 41:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
        goto LABEL_3;
      case 42:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
        goto LABEL_3;
      case 43:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
        goto LABEL_3;
      case 44:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
        goto LABEL_3;
      case 45:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
        goto LABEL_3;
      case 46:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
LABEL_3:
        closure #9 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4, v9);
        continue;
      case 47:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
        goto LABEL_66;
      case 48:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
        goto LABEL_66;
      case 49:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
        goto LABEL_66;
      case 50:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
        goto LABEL_66;
      case 51:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
        goto LABEL_66;
      case 52:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
        goto LABEL_66;
      case 53:
        closure #51 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 54:
        closure #52 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 55:
        v14 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes;
        v15 = MEMORY[0x277D21760];
LABEL_62:
        closure #20 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4, v14, v15);
        continue;
      case 56:
        closure #54 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 57:
        closure #55 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 58:
        closure #56 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 59:
        closure #57 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        continue;
      case 60:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
LABEL_66:
        closure #17 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4, v12);
        break;
      case 61:
        closure #59 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        break;
      case 62:
        closure #60 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        break;
      case 63:
        closure #61 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  lazy protocol witness table accessor for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #16 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #19 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #23 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #25 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #26 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #27 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #29 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #9 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #51 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #52 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #20 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t closure #54 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #55 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #56 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #57 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #17 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #59 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #60 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #61 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)()
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  result = closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  v11 = *(a1 + 32);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = *(a1 + 32);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 40))
  {
    v43 = *(a1 + 40);
    v44 = *(a1 + 48);
    lazy protocol witness table accessor for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 49) == 1)
  {
    v14 = v5;
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v14 = v5;
  }

  result = closure #1 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
  if (!v14)
  {
    closure #2 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #3 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #4 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    v15 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
    swift_beginAccess();
    if (*(a1 + v15))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
    swift_beginAccess();
    if (*(a1 + v16))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
    swift_beginAccess();
    if (*(a1 + v17))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v18 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
    swift_beginAccess();
    if (*(a1 + v18))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v19 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
    swift_beginAccess();
    if (*(a1 + v19))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
    swift_beginAccess();
    if (*(a1 + v20))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v21 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
    swift_beginAccess();
    if (*(a1 + v21))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #5 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation);
    v22 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
    swift_beginAccess();
    if (*(*(a1 + v22) + 16))
    {
      type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v23 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
    swift_beginAccess();
    v24 = *v23;
    v25 = v23[1];
    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {

      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence);
    closure #10 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    v27 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
    swift_beginAccess();
    if (*(a1 + v27))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #11 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #12 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #13 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime);
    v28 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
    swift_beginAccess();
    if (*(a1 + v28))
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v29 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
    swift_beginAccess();
    if (*(a1 + v29))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v30 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
    swift_beginAccess();
    if (*(a1 + v30))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v31 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
    swift_beginAccess();
    if (*(a1 + v31))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v32 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
    swift_beginAccess();
    if (*(a1 + v32))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v33 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
    swift_beginAccess();
    if (*(a1 + v33))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v34 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
    swift_beginAccess();
    if (*(a1 + v34))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v35 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
    swift_beginAccess();
    if (*(a1 + v35))
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate);
    v36 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
    swift_beginAccess();
    if (*(a1 + v36))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v37 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
    swift_beginAccess();
    if (*(a1 + v37))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v38 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
    swift_beginAccess();
    if (*(a1 + v38))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v39 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
    swift_beginAccess();
    if (*(a1 + v39))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v40 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
    swift_beginAccess();
    if (*(a1 + v40))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v41 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
    swift_beginAccess();
    if (*(a1 + v41))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v42 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
    swift_beginAccess();
    if (*(a1 + v42))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime);
    closure #22 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #23 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #24 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1);
    closure #25 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #26 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #27 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #28 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent);
    closure #30 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1);
    closure #31 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    return closure #32 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
}

uint64_t closure #4 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
}

uint64_t closure #5 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
}

uint64_t closure #10 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
}

uint64_t closure #11 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
}

uint64_t closure #12 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
}

uint64_t closure #13 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
}

uint64_t closure #22 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
}

uint64_t closure #23 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_GoalPublisher);
}

uint64_t closure #24 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  result = swift_beginAccess();
  v3 = v1[1];
  if (v3 >> 60 != 15)
  {
    v4 = *v1;
    outlined copy of Data._Representation(v4, v3);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    return outlined consume of Data?(v4, v3);
  }

  return result;
}

uint64_t closure #25 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
}

uint64_t closure #26 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
}

uint64_t closure #27 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
}

uint64_t closure #28 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
}

uint64_t closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v7 = *v5;
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #30 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount);
  result = swift_beginAccess();
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #31 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
}

uint64_t closure #32 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
}

BOOL closure #1 in static Apple_Workout_Core_MetricsPublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v688 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v686 = *(v688 - 8);
  v4 = *(v686 + 64);
  MEMORY[0x28223BE20](v688);
  v687 = &v608 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSg_ADtMR);
  v6 = *(*(v683 - 8) + 64);
  MEMORY[0x28223BE20](v683);
  v689 = &v608 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v685 = &v608 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v684 = &v608 - v12;
  v681 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher();
  v679 = *(v681 - 8);
  v13 = *(v679 + 64);
  MEMORY[0x28223BE20](v681);
  v680 = &v608 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v676 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSg_ADtMR);
  v15 = *(*(v676 - 8) + 64);
  MEMORY[0x28223BE20](v676);
  v682 = &v608 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v678 = &v608 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v677 = &v608 - v21;
  v674 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v672 = *(v674 - 8);
  v22 = *(v672 + 64);
  MEMORY[0x28223BE20](v674);
  v673 = &v608 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSg_ADtMR);
  v24 = *(*(v669 - 8) + 64);
  MEMORY[0x28223BE20](v669);
  v675 = &v608 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v671 = &v608 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v670 = &v608 - v30;
  v667 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher();
  v665 = *(v667 - 8);
  v31 = *(v665 + 64);
  MEMORY[0x28223BE20](v667);
  v666 = (&v608 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v662 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSg_ADtMR);
  v33 = *(*(v662 - 8) + 64);
  MEMORY[0x28223BE20](v662);
  v668 = &v608 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v664 = (&v608 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v663 = &v608 - v39;
  v660 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v658 = *(v660 - 8);
  v40 = *(v658 + 64);
  MEMORY[0x28223BE20](v660);
  v659 = &v608 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v655 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSg_ADtMR);
  v42 = *(*(v655 - 8) + 64);
  MEMORY[0x28223BE20](v655);
  v661 = &v608 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v657 = (&v608 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v46);
  v656 = &v608 - v48;
  v653 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v651 = *(v653 - 8);
  v49 = *(v651 + 64);
  MEMORY[0x28223BE20](v653);
  v652 = &v608 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v648 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSg_ADtMR);
  v51 = *(*(v648 - 8) + 64);
  MEMORY[0x28223BE20](v648);
  v654 = &v608 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x28223BE20](v53 - 8);
  v650 = &v608 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v649 = &v608 - v57;
  v646 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v644 = *(v646 - 8);
  v58 = *(v644 + 64);
  MEMORY[0x28223BE20](v646);
  v645 = &v608 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v641 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSg_ADtMR);
  v60 = *(*(v641 - 8) + 64);
  MEMORY[0x28223BE20](v641);
  v647 = &v608 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v62 - 8);
  v643 = &v608 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v642 = &v608 - v66;
  v637 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v635 = *(v637 - 8);
  v67 = *(v635 + 64);
  MEMORY[0x28223BE20](v637);
  v639 = (&v608 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  v634 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSg_ADtMR);
  v69 = *(*(v634 - 8) + 64);
  MEMORY[0x28223BE20](v634);
  v640 = &v608 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v72 = *(*(v71 - 8) + 64);
  v73 = MEMORY[0x28223BE20](v71 - 8);
  v638 = (&v608 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v73);
  v636 = &v608 - v75;
  v632 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v630 = *(v632 - 8);
  v76 = *(v630 + 64);
  MEMORY[0x28223BE20](v632);
  v631 = &v608 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v627 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSg_ADtMR);
  v78 = *(*(v627 - 8) + 64);
  MEMORY[0x28223BE20](v627);
  v633 = &v608 - v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v81 = *(*(v80 - 8) + 64);
  v82 = MEMORY[0x28223BE20](v80 - 8);
  v629 = &v608 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v628 = &v608 - v84;
  v625 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v623 = *(v625 - 8);
  v85 = *(v623 + 64);
  MEMORY[0x28223BE20](v625);
  v624 = (&v608 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0));
  v620 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSg_ADtMR);
  v87 = *(*(v620 - 8) + 64);
  MEMORY[0x28223BE20](v620);
  v626 = &v608 - v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v90 = *(*(v89 - 8) + 64);
  v91 = MEMORY[0x28223BE20](v89 - 8);
  v622 = (&v608 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v91);
  v621 = &v608 - v93;
  v618 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v616 = *(v618 - 8);
  v94 = *(v616 + 64);
  MEMORY[0x28223BE20](v618);
  v617 = &v608 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v613 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSg_ADtMR);
  v96 = *(*(v613 - 8) + 64);
  MEMORY[0x28223BE20](v613);
  v619 = &v608 - v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v99 = *(*(v98 - 8) + 64);
  v100 = MEMORY[0x28223BE20](v98 - 8);
  v615 = &v608 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100);
  v614 = &v608 - v102;
  v694 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher();
  v692 = *(v694 - 8);
  v103 = *(v692 + 64);
  MEMORY[0x28223BE20](v694);
  v612 = &v608 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v690 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSg_ADtMR);
  v105 = *(*(v690 - 8) + 64);
  MEMORY[0x28223BE20](v690);
  v695 = &v608 - v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v108 = *(*(v107 - 8) + 64);
  v109 = MEMORY[0x28223BE20](v107 - 8);
  v691 = &v608 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v693 = &v608 - v111;
  v701 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  v698 = *(v701 - 8);
  v112 = *(v698 + 64);
  MEMORY[0x28223BE20](v701);
  v696 = (&v608 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0));
  v697 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSg_ADtMR);
  v114 = *(*(v697 - 8) + 64);
  MEMORY[0x28223BE20](v697);
  v702 = &v608 - v115;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v117 = *(*(v116 - 8) + 64);
  v118 = MEMORY[0x28223BE20](v116 - 8);
  v699 = (&v608 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v118);
  v700 = &v608 - v120;
  v708 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  v707 = *(v708 - 8);
  v121 = *(v707 + 64);
  MEMORY[0x28223BE20](v708);
  v703 = (&v608 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0));
  v706 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSg_ADtMR);
  v123 = *(*(v706 - 8) + 64);
  MEMORY[0x28223BE20](v706);
  v709 = &v608 - v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v126 = *(*(v125 - 8) + 64);
  v127 = MEMORY[0x28223BE20](v125 - 8);
  v704 = (&v608 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v127);
  v717 = &v608 - v129;
  v714 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v713 = *(v714 - 8);
  v130 = *(v713 + 64);
  MEMORY[0x28223BE20](v714);
  v705 = (&v608 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
  v712 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSg_ADtMR);
  v132 = *(*(v712 - 8) + 64);
  MEMORY[0x28223BE20](v712);
  v715 = &v608 - v133;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v135 = *(*(v134 - 8) + 64);
  v136 = MEMORY[0x28223BE20](v134 - 8);
  v710 = (&v608 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v136);
  v722 = &v608 - v138;
  v720 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v719 = *(v720 - 8);
  v139 = *(v719 + 64);
  MEMORY[0x28223BE20](v720);
  v711 = &v608 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v718 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSg_ADtMR);
  v141 = *(*(v718 - 8) + 64);
  MEMORY[0x28223BE20](v718);
  v721 = &v608 - v142;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v144 = *(*(v143 - 8) + 64);
  v145 = MEMORY[0x28223BE20](v143 - 8);
  v716 = &v608 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v145);
  v723 = &v608 - v147;
  v148 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  v724 = *(v148 - 8);
  v149 = *(v724 + 64);
  MEMORY[0x28223BE20](v148);
  v151 = (&v608 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0));
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSg_ADtMR);
  v153 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v152);
  v155 = &v608 - v154;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v157 = *(*(v156 - 8) + 64);
  v158 = MEMORY[0x28223BE20](v156 - 8);
  v160 = (&v608 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v158);
  v162 = &v608 - v161;
  swift_beginAccess();
  v163 = *(a1 + 16);
  swift_beginAccess();
  if (v163 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v165 = a1;
  v166 = *(a1 + 24);
  v610 = v165;
  v167 = *(v165 + 32);
  swift_beginAccess();
  v168 = *(a2 + 24);
  v169 = *(a2 + 32);
  v611 = a2;
  if ((v166 != v168 || v167 != v169) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v170 = v610;
  swift_beginAccess();
  v171 = *(v170 + 40);
  v172 = v611;
  swift_beginAccess();
  v173 = *(v172 + 40);
  if (*(v172 + 48) == 1)
  {
    if (v173 <= 1)
    {
      if (v173)
      {
        if (v171 != 1)
        {
          return 0;
        }
      }

      else if (v171)
      {
        return 0;
      }
    }

    else if (v173 == 2)
    {
      if (v171 != 2)
      {
        return 0;
      }
    }

    else if (v173 == 3)
    {
      if (v171 != 3)
      {
        return 0;
      }
    }

    else if (v171 != 4)
    {
      return 0;
    }
  }

  else if (v171 != v173)
  {
    return 0;
  }

  swift_beginAccess();
  v174 = *(v170 + 49);
  swift_beginAccess();
  if (v174 != *(v172 + 49))
  {
    return 0;
  }

  v175 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v170 + v175, v162, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v176 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  v177 = *(v152 + 48);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v162, v155, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v609 = v177;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v172 + v176, &v155[v177], &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v178 = *(v724 + 48);
  if (v178(v155, 1, v148) == 1)
  {

    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v162, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
    if (v178(&v155[v609], 1, v148) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v155, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
      goto LABEL_31;
    }

LABEL_22:
    v180 = &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSg_ADtMd;
    v181 = &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSg_ADtMR;
    v182 = v155;
LABEL_70:
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v182, v180, v181);
    goto LABEL_71;
  }

  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v155, v160, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v179 = v609;
  if (v178(&v155[v609], 1, v148) == 1)
  {

    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v162, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v160, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
    goto LABEL_22;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(&v155[v179], v151, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  v172 = v611;
  if (*v160 != *v151)
  {

    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v151, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v162, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v160, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
    v182 = v155;
    v180 = &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd;
    v181 = &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR;
    goto LABEL_70;
  }

  v183 = *(v148 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);

  v184 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v151, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v162, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v160, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v155, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  if ((v184 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_31:
  v185 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  v186 = v723;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v170 + v185, v723, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v187 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  v188 = *(v718 + 48);
  v189 = v721;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v186, v721, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v172 + v187, v189 + v188, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v190 = *(v719 + 48);
  v191 = v720;
  if (v190(v189, 1, v720) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v186, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
    v192 = v190(v189 + v188, 1, v191);
    v193 = v717;
    v194 = v722;
    if (v192 == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v189, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v195 = v716;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v189, v716, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v196 = v190(v189 + v188, 1, v191);
  v197 = v717;
  v194 = v722;
  if (v196 == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v723, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v195, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
LABEL_36:
    v180 = &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSg_ADtMd;
    v181 = &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSg_ADtMR;
    v182 = v189;
    goto LABEL_70;
  }

  v198 = v189 + v188;
  v199 = v711;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v198, v711, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  v200 = specialized static Apple_Workout_Core_ActivitySummaryMetricsPublisher.== infix(_:_:)(v195, v199);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v199, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v723, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v195, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v189, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v193 = v197;
  if ((v200 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_39:
  v201 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v170 + v201, v194, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v202 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  v203 = *(v712 + 48);
  v204 = v194;
  v205 = v194;
  v206 = v715;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v204, v715, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v172 + v202, v206 + v203, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v207 = *(v713 + 48);
  v208 = v714;
  if (v207(v206, 1, v714) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v205, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
    if (v207(v206 + v203, 1, v208) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v206, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v209 = v710;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v206, v710, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  if (v207(v206 + v203, 1, v208) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v722, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v209, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
LABEL_44:
    v180 = &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSg_ADtMd;
    v181 = &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSg_ADtMR;
    v182 = v206;
    goto LABEL_70;
  }

  v210 = v206 + v203;
  v211 = v705;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v210, v705, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  v212 = specialized static Apple_Workout_Core_HeartRateMetricsPublisher.== infix(_:_:)(v209, v211);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v211, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v722, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v209, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v206, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  if ((v212 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_46:
  v213 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v170 + v213, v193, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v214 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  v215 = *(v706 + 48);
  v216 = v709;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v193, v709, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v217 = v172 + v214;
  v218 = v216;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v217, v216 + v215, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v219 = *(v707 + 48);
  v220 = v708;
  if (v219(v216, 1, v708) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v193, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
    if (v219(v216 + v215, 1, v220) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v216, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
      goto LABEL_49;
    }

    goto LABEL_64;
  }

  v254 = v704;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v218, v704, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  if (v219(v218 + v215, 1, v220) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v193, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v254, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
LABEL_64:
    v180 = &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSg_ADtMd;
    v181 = &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSg_ADtMR;
    v182 = v218;
    goto LABEL_70;
  }

  v255 = v218 + v215;
  v256 = v703;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v255, v703, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  if (*v254 != *v256 || v254[1] != v256[1])
  {
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v256, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v193, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v254, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
    v182 = v218;
    v180 = &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd;
    v181 = &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR;
    goto LABEL_70;
  }

  v257 = *(v220 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v258 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v256, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v193, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v254, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v218, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  if ((v258 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_49:
  v221 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
  swift_beginAccess();
  v222 = *(v170 + v221);
  v223 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
  swift_beginAccess();
  if (v222 != *(v172 + v223))
  {
    goto LABEL_71;
  }

  v224 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
  swift_beginAccess();
  v225 = *(v170 + v224);
  v226 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
  swift_beginAccess();
  if (v225 != *(v172 + v226))
  {
    goto LABEL_71;
  }

  v227 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
  swift_beginAccess();
  v228 = *(v170 + v227);
  v229 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
  swift_beginAccess();
  if (v228 != *(v172 + v229))
  {
    goto LABEL_71;
  }

  v230 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
  swift_beginAccess();
  v231 = *(v170 + v230);
  v232 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
  swift_beginAccess();
  if (v231 != *(v172 + v232))
  {
    goto LABEL_71;
  }

  v233 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
  swift_beginAccess();
  v234 = *(v170 + v233);
  v235 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
  swift_beginAccess();
  if (v234 != *(v172 + v235))
  {
    goto LABEL_71;
  }

  v236 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
  swift_beginAccess();
  v237 = *(v170 + v236);
  v238 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
  swift_beginAccess();
  if (v237 != *(v172 + v238))
  {
    goto LABEL_71;
  }

  v239 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
  swift_beginAccess();
  v240 = *(v170 + v239);
  v241 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
  swift_beginAccess();
  if (v240 != *(v172 + v241))
  {
    goto LABEL_71;
  }

  v242 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  v243 = v700;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v170 + v242, v700, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v244 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  v245 = *(v697 + 48);
  v246 = v243;
  v247 = v702;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v246, v702, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v172 + v244, v247 + v245, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v248 = *(v698 + 48);
  if (v248(v247, 1, v701) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v700, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
    if (v248(v702 + v245, 1, v701) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v702, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
      goto LABEL_59;
    }

    goto LABEL_74;
  }

  v259 = v702;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v702, v699, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  if (v248(v259 + v245, 1, v701) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v700, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v699, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
LABEL_74:
    v260 = &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSg_ADtMd;
    v261 = &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSg_ADtMR;
    v262 = v702;
LABEL_75:
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v262, v260, v261);
    goto LABEL_71;
  }

  v263 = v696;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v702 + v245, v696, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  if (*v699 != *v263)
  {
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v696, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v700, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v699, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
    v262 = v702;
    v260 = &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd;
    v261 = &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR;
    goto LABEL_75;
  }

  v264 = *(v701 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v265 = v699;
  v266 = v696;
  v267 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v266, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v700, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v265, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v702, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  if ((v267 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_59:
  v249 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
  swift_beginAccess();
  v250 = *v249;
  v251 = *(v249 + 8);
  v252 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
  swift_beginAccess();
  v253 = *(v252 + 8);
  if (v251)
  {
    if (*(v252 + 8))
    {
      goto LABEL_82;
    }

LABEL_71:

    return 0;
  }

  if ((*(v252 + 8) & 1) != 0 || v250 != *v252)
  {
    goto LABEL_71;
  }

LABEL_82:
  v268 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
  swift_beginAccess();
  v269 = *v268;
  v270 = *(v268 + 8);
  v271 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
  swift_beginAccess();
  v272 = *(v271 + 8);
  if (v270)
  {
    if ((*(v271 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v271 + 8) & 1) != 0 || v269 != *v271)
  {
    goto LABEL_71;
  }

  v273 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  v274 = v610;
  swift_beginAccess();
  v275 = *(v274 + v273);
  v276 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  v277 = v611;
  swift_beginAccess();
  v278 = *(v277 + v276);

  LOBYTE(v277) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B16ChartDataElementV_Tt1g5(v275, v278);

  if ((v277 & 1) == 0)
  {
    goto LABEL_71;
  }

  v279 = (v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v280 = *v279;
  v281 = v279[1];
  v282 = (v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  if ((v280 != *v282 || v281 != v282[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_71;
  }

  v283 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
  swift_beginAccess();
  v284 = *v283;
  v285 = *(v283 + 8);
  v286 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
  swift_beginAccess();
  v287 = *(v286 + 8);
  if (v285)
  {
    if ((*(v286 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v286 + 8) & 1) != 0 || v284 != *v286)
  {
    goto LABEL_71;
  }

  v288 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
  swift_beginAccess();
  v289 = *v288;
  v290 = *(v288 + 8);
  v291 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
  swift_beginAccess();
  v292 = *(v291 + 8);
  if (v290)
  {
    if ((*(v291 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v291 + 8) & 1) != 0 || v289 != *v291)
  {
    goto LABEL_71;
  }

  v293 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  v294 = v610;
  swift_beginAccess();
  v295 = v693;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v294 + v293, v693, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v296 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  v297 = v611;
  swift_beginAccess();
  v298 = *(v690 + 48);
  v299 = v295;
  v300 = v695;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v299, v695, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v297 + v296, v300 + v298, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v301 = *(v692 + 48);
  if (v301(v300, 1, v694) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v693, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
    if (v301(v695 + v298, 1, v694) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v695, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
      goto LABEL_109;
    }

    goto LABEL_107;
  }

  v302 = v695;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v695, v691, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  if (v301(v302 + v298, 1, v694) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v693, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v691, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
LABEL_107:
    v260 = &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSg_ADtMd;
    v261 = &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSg_ADtMR;
    v262 = v695;
    goto LABEL_75;
  }

  v303 = v695;
  v304 = v695 + v298;
  v305 = v612;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v304, v612, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  v306 = v691;
  v307 = specialized static Apple_Workout_Core_PowerMetricsPublisher.== infix(_:_:)(v691, v305);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v305, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v693, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v306, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v303, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  if ((v307 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_109:
  v308 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  v309 = v610;
  swift_beginAccess();
  v310 = *(v309 + v308);
  v311 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  v312 = v611;
  swift_beginAccess();
  if (v310 != *(v312 + v311))
  {
    goto LABEL_71;
  }

  v313 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  v314 = v610;
  swift_beginAccess();
  v315 = v614;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v314 + v313, v614, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v316 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  v317 = v611;
  swift_beginAccess();
  v318 = *(v613 + 48);
  v319 = v315;
  v320 = v619;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v319, v619, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v317 + v316, v320 + v318, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v321 = *(v616 + 48);
  if (v321(v320, 1, v618) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v614, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
    if (v321(v619 + v318, 1, v618) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v619, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
      goto LABEL_117;
    }

    goto LABEL_115;
  }

  v322 = v619;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v619, v615, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  if (v321(v322 + v318, 1, v618) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v614, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v615, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
LABEL_115:
    v260 = &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSg_ADtMd;
    v261 = &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSg_ADtMR;
    v262 = v619;
    goto LABEL_75;
  }

  v323 = v619;
  v324 = v619 + v318;
  v325 = v617;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v324, v617, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  v326 = v615;
  v327 = specialized static Apple_Workout_Core_WorkoutStatePublisher.== infix(_:_:)(v615, v325);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v325, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v614, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v326, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v323, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  if ((v327 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_117:
  v328 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  v329 = v610;
  swift_beginAccess();
  v330 = v621;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v329 + v328, v621, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v331 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  v332 = v611;
  swift_beginAccess();
  v333 = *(v620 + 48);
  v334 = v330;
  v335 = v626;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v334, v626, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v332 + v331, v335 + v333, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v336 = *(v623 + 48);
  if (v336(v335, 1, v625) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v621, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
    if (v336(v626 + v333, 1, v625) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v626, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
      goto LABEL_124;
    }

    goto LABEL_122;
  }

  v337 = v626;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v626, v622, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  if (v336(v337 + v333, 1, v625) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v621, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v622, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
LABEL_122:
    v260 = &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSg_ADtMd;
    v261 = &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSg_ADtMR;
    v262 = v626;
    goto LABEL_75;
  }

  v338 = v626;
  v339 = v626 + v333;
  v340 = v624;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v339, v624, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  v341 = v622;
  v342 = specialized static Apple_Workout_Core_IntervalsMetricsPublisher.== infix(_:_:)(v622, v340);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v340, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v621, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v341, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v338, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  if ((v342 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_124:
  v343 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  v344 = v610;
  swift_beginAccess();
  v345 = v628;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v344 + v343, v628, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v346 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  v347 = v611;
  swift_beginAccess();
  v348 = *(v627 + 48);
  v349 = v345;
  v350 = v633;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v349, v633, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v347 + v346, v350 + v348, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v351 = *(v630 + 48);
  if (v351(v350, 1, v632) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v628, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
    if (v351(v633 + v348, 1, v632) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v633, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  v352 = v633;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v633, v629, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  if (v351(v352 + v348, 1, v632) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v628, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v629, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
LABEL_129:
    v260 = &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSg_ADtMd;
    v261 = &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSg_ADtMR;
    v262 = v633;
    goto LABEL_75;
  }

  v353 = v633;
  v354 = v633 + v348;
  v355 = v631;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v354, v631, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  v356 = v629;
  v357 = specialized static Apple_Workout_Core_MultiSportMetricsPublisher.== infix(_:_:)(v629, v355);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v355, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v628, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v356, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v353, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  if ((v357 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_131:
  v358 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
  swift_beginAccess();
  v359 = *v358;
  v360 = *(v358 + 8);
  v361 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
  swift_beginAccess();
  v362 = *(v361 + 8);
  if (v360)
  {
    if ((*(v361 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v361 + 8) & 1) != 0 || v359 != *v361)
  {
    goto LABEL_71;
  }

  v363 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  v364 = v610;
  swift_beginAccess();
  LODWORD(v363) = *(v364 + v363);
  v365 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  v366 = v611;
  swift_beginAccess();
  if (v363 != *(v366 + v365))
  {
    goto LABEL_71;
  }

  v367 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  v368 = v610;
  swift_beginAccess();
  v369 = *(v368 + v367);
  v370 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  v371 = v611;
  swift_beginAccess();
  if (v369 != *(v371 + v370))
  {
    goto LABEL_71;
  }

  v372 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  v373 = v610;
  swift_beginAccess();
  v374 = *(v373 + v372);
  v375 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  v376 = v611;
  swift_beginAccess();
  if (v374 != *(v376 + v375))
  {
    goto LABEL_71;
  }

  v377 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  v378 = v610;
  swift_beginAccess();
  v379 = *(v378 + v377);
  v380 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  v381 = v611;
  swift_beginAccess();
  if (v379 != *(v381 + v380))
  {
    goto LABEL_71;
  }

  v382 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  v383 = v610;
  swift_beginAccess();
  v384 = *(v383 + v382);
  v385 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  v386 = v611;
  swift_beginAccess();
  if (v384 != *(v386 + v385))
  {
    goto LABEL_71;
  }

  v387 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  v388 = v610;
  swift_beginAccess();
  v389 = *(v388 + v387);
  v390 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  v391 = v611;
  swift_beginAccess();
  if (v389 != *(v391 + v390))
  {
    goto LABEL_71;
  }

  v392 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  v393 = v610;
  swift_beginAccess();
  v394 = *(v393 + v392);
  v395 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  v396 = v611;
  swift_beginAccess();
  if (v394 != *(v396 + v395))
  {
    goto LABEL_71;
  }

  v397 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  v398 = v610;
  swift_beginAccess();
  LODWORD(v397) = *(v398 + v397);
  v399 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  v400 = v611;
  swift_beginAccess();
  if (v397 != *(v400 + v399))
  {
    goto LABEL_71;
  }

  v401 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  swift_beginAccess();
  v402 = *v401;
  v403 = *(v401 + 8);
  v404 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  swift_beginAccess();
  v405 = *(v404 + 8);
  if (v403)
  {
    if ((*(v404 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v404 + 8) & 1) != 0 || v402 != *v404)
  {
    goto LABEL_71;
  }

  v406 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  v407 = v610;
  swift_beginAccess();
  v408 = *(v407 + v406);
  v409 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  v410 = v611;
  swift_beginAccess();
  if (v408 != *(v410 + v409))
  {
    goto LABEL_71;
  }

  v411 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  v412 = v610;
  swift_beginAccess();
  v413 = *(v412 + v411);
  v414 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  v415 = v611;
  swift_beginAccess();
  if (v413 != *(v415 + v414))
  {
    goto LABEL_71;
  }

  v416 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  v417 = v610;
  swift_beginAccess();
  v418 = *(v417 + v416);
  v419 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  v420 = v611;
  swift_beginAccess();
  if (v418 != *(v420 + v419))
  {
    goto LABEL_71;
  }

  v421 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  v422 = v610;
  swift_beginAccess();
  v423 = *(v422 + v421);
  v424 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  v425 = v611;
  swift_beginAccess();
  if (v423 != *(v425 + v424))
  {
    goto LABEL_71;
  }

  v426 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  v427 = v610;
  swift_beginAccess();
  v428 = *(v427 + v426);
  v429 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  v430 = v611;
  swift_beginAccess();
  if (v428 != *(v430 + v429))
  {
    goto LABEL_71;
  }

  v431 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  v432 = v610;
  swift_beginAccess();
  v433 = *(v432 + v431);
  v434 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  v435 = v611;
  swift_beginAccess();
  if (v433 != *(v435 + v434))
  {
    goto LABEL_71;
  }

  v436 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  v437 = v610;
  swift_beginAccess();
  v438 = *(v437 + v436);
  v439 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  v440 = v611;
  swift_beginAccess();
  if (v438 != *(v440 + v439))
  {
    goto LABEL_71;
  }

  v441 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
  swift_beginAccess();
  v442 = *v441;
  v443 = *(v441 + 8);
  v444 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
  swift_beginAccess();
  v445 = *(v444 + 8);
  if (v443)
  {
    if ((*(v444 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v444 + 8) & 1) != 0 || v442 != *v444)
  {
    goto LABEL_71;
  }

  v446 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
  swift_beginAccess();
  v447 = *v446;
  v448 = *(v446 + 8);
  v449 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
  swift_beginAccess();
  v450 = *(v449 + 8);
  if (v448)
  {
    if ((*(v449 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v449 + 8) & 1) != 0 || v447 != *v449)
  {
    goto LABEL_71;
  }

  v451 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
  swift_beginAccess();
  v452 = *v451;
  v453 = *(v451 + 8);
  v454 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
  swift_beginAccess();
  v455 = *(v454 + 8);
  if (v453)
  {
    if ((*(v454 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v454 + 8) & 1) != 0 || v452 != *v454)
  {
    goto LABEL_71;
  }

  v456 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
  swift_beginAccess();
  v457 = *v456;
  v458 = *(v456 + 8);
  v459 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
  swift_beginAccess();
  v460 = *(v459 + 8);
  if (v458)
  {
    if ((*(v459 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v459 + 8) & 1) != 0 || v457 != *v459)
  {
    goto LABEL_71;
  }

  v461 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
  swift_beginAccess();
  v462 = *v461;
  v463 = *(v461 + 8);
  v464 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
  swift_beginAccess();
  v465 = *(v464 + 8);
  if (v463)
  {
    if ((*(v464 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v464 + 8) & 1) != 0 || v462 != *v464)
  {
    goto LABEL_71;
  }

  v466 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
  swift_beginAccess();
  v467 = *v466;
  v468 = *(v466 + 8);
  v469 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
  swift_beginAccess();
  v470 = *(v469 + 8);
  if (v468)
  {
    if ((*(v469 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v469 + 8) & 1) != 0 || v467 != *v469)
  {
    goto LABEL_71;
  }

  v471 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  v472 = v610;
  swift_beginAccess();
  v473 = v636;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v472 + v471, v636, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v474 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  v475 = v611;
  swift_beginAccess();
  v476 = *(v634 + 48);
  v477 = v473;
  v478 = v640;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v477, v640, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v475 + v474, v478 + v476, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v479 = *(v635 + 48);
  if (v479(v478, 1, v637) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v636, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
    if (v479(v640 + v476, 1, v637) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v640, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
      goto LABEL_194;
    }

    goto LABEL_191;
  }

  v480 = v640;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v640, v638, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  if (v479(v480 + v476, 1, v637) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v636, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v638, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
LABEL_191:
    v260 = &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSg_ADtMd;
    v261 = &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSg_ADtMR;
    v262 = v640;
    goto LABEL_75;
  }

  v481 = v639;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v640 + v476, v639, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C14_MetricPlatterV_Tt1g5(*v638, *v481) & 1) == 0)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v636, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v639, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v638, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
    v262 = v640;
    v260 = &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd;
    v261 = &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR;
    goto LABEL_75;
  }

  v482 = *(v637 + 20);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  v484 = v638;
  v483 = v639;
  v485 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v636, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v483, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v484, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v640, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  if ((v485 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_194:
  v486 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  v487 = v610;
  swift_beginAccess();
  v488 = v642;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v487 + v486, v642, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v489 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  v490 = v611;
  swift_beginAccess();
  v491 = *(v641 + 48);
  v492 = v488;
  v493 = v647;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v492, v647, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v490 + v489, v493 + v491, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v494 = *(v644 + 48);
  if (v494(v493, 1, v646) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v642, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
    if (v494(v647 + v491, 1, v646) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v647, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
      goto LABEL_202;
    }

    goto LABEL_199;
  }

  v495 = v647;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v647, v643, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  if (v494(v495 + v491, 1, v646) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v642, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v643, type metadata accessor for Apple_Workout_Core_GoalPublisher);
LABEL_199:
    v260 = &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSg_ADtMd;
    v261 = &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSg_ADtMR;
    v262 = v647;
    goto LABEL_75;
  }

  v496 = v647;
  v497 = v647 + v491;
  v498 = v645;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v497, v645, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  v499 = v643;
  v500 = static Apple_Workout_Core_GoalPublisher.== infix(_:_:)(v643, v498);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v498, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v642, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v499, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v496, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  if ((v500 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_202:
  v501 = (v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v503 = *v501;
  v502 = v501[1];
  v504 = (v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v505 = *v504;
  v506 = v504[1];
  outlined copy of Data?(v503, v502);
  outlined copy of Data?(v505, v506);
  if (v502 >> 60 == 15)
  {
    if (v506 >> 60 == 15)
    {
      outlined consume of Data?(v503, v502);
      goto LABEL_210;
    }

LABEL_208:
    outlined consume of Data?(v503, v502);
    outlined consume of Data?(v505, v506);
    return 0;
  }

  outlined copy of Data?(v503, v502);
  outlined copy of Data?(v505, v506);
  if (v506 >> 60 == 15)
  {

    outlined consume of Data?(v505, v506);
    outlined consume of Data?(v503, v502);
    goto LABEL_208;
  }

  v507 = specialized static Data.== infix(_:_:)(v503, v502, v505, v506);
  outlined consume of Data?(v505, v506);
  outlined consume of Data?(v503, v502);
  outlined consume of Data?(v505, v506);
  outlined consume of Data?(v503, v502);
  if ((v507 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_210:
  v508 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  v509 = v610;
  swift_beginAccess();
  v510 = v649;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v509 + v508, v649, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v511 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  v512 = v611;
  swift_beginAccess();
  v513 = *(v648 + 48);
  v514 = v510;
  v515 = v654;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v514, v654, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v512 + v511, v515 + v513, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v516 = *(v651 + 48);
  if (v516(v515, 1, v653) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v649, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
    if (v516(v654 + v513, 1, v653) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v654, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
      goto LABEL_217;
    }

    goto LABEL_215;
  }

  v517 = v654;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v654, v650, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  if (v516(v517 + v513, 1, v653) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v649, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v650, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
LABEL_215:
    v260 = &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSg_ADtMd;
    v261 = &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSg_ADtMR;
    v262 = v654;
    goto LABEL_75;
  }

  v518 = v654;
  v519 = v654 + v513;
  v520 = v652;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v519, v652, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  v521 = v650;
  v522 = specialized static Apple_Workout_Core_RaceInformationPublisher.== infix(_:_:)(v650, v520);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v520, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v649, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v521, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v518, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  if ((v522 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_217:
  v523 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  v524 = v610;
  swift_beginAccess();
  v525 = v656;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v524 + v523, v656, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v526 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  v527 = v611;
  swift_beginAccess();
  v528 = *(v655 + 48);
  v529 = v525;
  v530 = v661;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v529, v661, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v527 + v526, v530 + v528, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v531 = *(v658 + 48);
  if (v531(v530, 1, v660) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v656, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
    if (v531(v661 + v528, 1, v660) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v661, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
      goto LABEL_224;
    }

    goto LABEL_222;
  }

  v532 = v661;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v661, v657, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  if (v531(v532 + v528, 1, v660) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v656, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v657, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
LABEL_222:
    v260 = &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSg_ADtMd;
    v261 = &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSg_ADtMR;
    v262 = v661;
    goto LABEL_75;
  }

  v533 = v661;
  v534 = v661 + v528;
  v535 = v659;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v534, v659, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  v536 = v657;
  v537 = specialized static Apple_Workout_Core_RacePositionStatePublisher.== infix(_:_:)(v657, v535);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v535, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v656, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v536, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v533, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  if ((v537 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_224:
  v538 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  v539 = v610;
  swift_beginAccess();
  v540 = v663;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v539 + v538, v663, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v541 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  v542 = v611;
  swift_beginAccess();
  v543 = *(v662 + 48);
  v544 = v540;
  v545 = v668;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v544, v668, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v542 + v541, v545 + v543, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v546 = *(v665 + 48);
  if (v546(v545, 1, v667) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v663, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
    if (v546(v668 + v543, 1, v667) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v668, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
      goto LABEL_231;
    }

    goto LABEL_229;
  }

  v547 = v668;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v668, v664, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  if (v546(v547 + v543, 1, v667) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v663, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v664, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
LABEL_229:
    v260 = &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSg_ADtMd;
    v261 = &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSg_ADtMR;
    v262 = v668;
    goto LABEL_75;
  }

  v548 = v668;
  v549 = v668 + v543;
  v550 = v666;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v549, v666, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  v551 = v664;
  v552 = specialized static Apple_Workout_Core_LocationPositionPublisher.== infix(_:_:)(v664, v550);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v550, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v663, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v551, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v548, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  if ((v552 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_231:
  v553 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  v554 = v610;
  swift_beginAccess();
  v555 = v670;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v554 + v553, v670, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v556 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  v557 = v611;
  swift_beginAccess();
  v558 = *(v669 + 48);
  v559 = v555;
  v560 = v675;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v559, v675, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v557 + v556, v560 + v558, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v561 = *(v672 + 48);
  if (v561(v560, 1, v674) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v670, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
    if (v561(v675 + v558, 1, v674) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v675, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
      goto LABEL_238;
    }

    goto LABEL_236;
  }

  v562 = v675;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v675, v671, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  if (v561(v562 + v558, 1, v674) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v670, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v671, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
LABEL_236:
    v260 = &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSg_ADtMd;
    v261 = &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSg_ADtMR;
    v262 = v675;
    goto LABEL_75;
  }

  v563 = v675;
  v564 = v675 + v558;
  v565 = v673;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v564, v673, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  v566 = v671;
  v567 = specialized static Apple_Workout_Core_WaterTemperatureMetricsPublisher.== infix(_:_:)(v671, v565);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v565, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v670, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v566, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v563, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  if ((v567 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_238:
  v568 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
  swift_beginAccess();
  v569 = *v568;
  v570 = *(v568 + 8);
  v571 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
  swift_beginAccess();
  v572 = *(v571 + 8);
  if (v570)
  {
    if ((*(v571 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v571 + 8) & 1) != 0 || v569 != *v571)
  {
    goto LABEL_71;
  }

  v573 = (v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount);
  swift_beginAccess();
  v574 = *v573;
  v575 = *(v573 + 4);
  v576 = v611 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  v577 = *(v576 + 4);
  if (v575)
  {
    if ((*(v576 + 4) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v576 + 4) & 1) != 0 || v574 != *v576)
  {
    goto LABEL_71;
  }

  v578 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  v579 = v610;
  swift_beginAccess();
  v580 = v677;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v579 + v578, v677, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v581 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  v582 = v611;
  swift_beginAccess();
  v583 = *(v676 + 48);
  v584 = v580;
  v585 = v682;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v584, v682, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v582 + v581, v585 + v583, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v586 = *(v679 + 48);
  if (v586(v585, 1, v681) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v677, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
    if (v586(v682 + v583, 1, v681) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v682, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
      goto LABEL_255;
    }

    goto LABEL_253;
  }

  v587 = v682;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v682, v678, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  if (v586(v587 + v583, 1, v681) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v677, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v678, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
LABEL_253:
    v260 = &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSg_ADtMd;
    v261 = &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSg_ADtMR;
    v262 = v682;
    goto LABEL_75;
  }

  v588 = v682;
  v589 = v682 + v583;
  v590 = v680;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v589, v680, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  v591 = v678;
  v592 = specialized static Apple_Workout_Core_TrackRunningMetricsPublisher.== infix(_:_:)(v678, v590);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v590, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v677, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v591, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v588, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  if ((v592 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_255:
  v593 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  v594 = v610;
  swift_beginAccess();
  v595 = v684;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v594 + v593, v684, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v596 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  v597 = v611;
  swift_beginAccess();
  v598 = *(v683 + 48);
  v599 = v595;
  v600 = v689;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v599, v689, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v597 + v596, v600 + v598, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v601 = *(v686 + 48);
  if (v601(v600, 1, v688) != 1)
  {
    v602 = v689;
    outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v689, v685, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
    if (v601(v602 + v598, 1, v688) == 1)
    {

      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v684, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
      outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v685, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
      goto LABEL_260;
    }

    v603 = v689;
    v604 = v689 + v598;
    v605 = v687;
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v604, v687, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
    v606 = v685;
    v607 = specialized static Apple_Workout_Core_WorkoutBuddyStatePublisher.== infix(_:_:)(v685, v605);

    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v605, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v684, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v606, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v603, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
    return (v607 & 1) != 0;
  }

  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v684, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  if (v601(v689 + v598, 1, v688) != 1)
  {
LABEL_260:
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v689, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSg_ADtMR);
    return 0;
  }

  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v689, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  return 1;
}

Swift::Int Apple_Workout_Core_MetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_MetricsPublisher(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_ConfigurationType@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MetricsPublisher()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_MetricsPublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = closure #1 in static Apple_Workout_Core_MetricsPublisher.== infix(_:_:)(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_ConfigurationType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_ConfigurationType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_ConfigurationType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B18_ConfigurationTypeOGMd, &_sSay11WorkoutCore06Apple_a1_B18_ConfigurationTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_ConfigurationType] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double keypath_get_51Tm@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  result = *(v5 + v6);
  *a3 = result;
  return result;
}

uint64_t keypath_get_91Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _DWORD *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_ConfigurationType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_ConfigurationType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_Core_ConfigurationType(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_ConfigurationType(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Core_MetricsPublisher()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_MetricsPublisher._StorageClass()
{
  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_ElapsedTimeMetricsPublisher?, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  if (v1 <= 0x3F)
  {
    v34 = *(v0 - 8) + 64;
    type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_ActivitySummaryMetricsPublisher?, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
    if (v3 <= 0x3F)
    {
      v35 = *(v2 - 8) + 64;
      type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_HeartRateMetricsPublisher?, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
      if (v5 <= 0x3F)
      {
        v36 = *(v4 - 8) + 64;
        type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_EnergyMetricsPublisher?, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
        if (v7 <= 0x3F)
        {
          v37 = *(v6 - 8) + 64;
          type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_LapsMetricsPublisher?, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
          if (v9 <= 0x3F)
          {
            v38 = *(v8 - 8) + 64;
            type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_PowerMetricsPublisher?, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
            if (v11 <= 0x3F)
            {
              v39 = *(v10 - 8) + 64;
              type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_WorkoutStatePublisher?, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
              if (v13 <= 0x3F)
              {
                v40 = *(v12 - 8) + 64;
                type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_IntervalsMetricsPublisher?, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
                if (v15 <= 0x3F)
                {
                  v41 = *(v14 - 8) + 64;
                  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_MultiSportMetricsPublisher?, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
                  if (v17 <= 0x3F)
                  {
                    v42 = *(v16 - 8) + 64;
                    type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_PlatterPublisher?, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
                    if (v19 <= 0x3F)
                    {
                      v43 = *(v18 - 8) + 64;
                      type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_GoalPublisher?, type metadata accessor for Apple_Workout_Core_GoalPublisher);
                      if (v21 <= 0x3F)
                      {
                        v44 = *(v20 - 8) + 64;
                        type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_RaceInformationPublisher?, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
                        if (v23 <= 0x3F)
                        {
                          v45 = *(v22 - 8) + 64;
                          type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_RacePositionStatePublisher?, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
                          if (v25 <= 0x3F)
                          {
                            v46 = *(v24 - 8) + 64;
                            type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_LocationPositionPublisher?, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
                            if (v27 <= 0x3F)
                            {
                              v47 = *(v26 - 8) + 64;
                              type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_WaterTemperatureMetricsPublisher?, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
                              if (v29 <= 0x3F)
                              {
                                v48 = *(v28 - 8) + 64;
                                type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_TrackRunningMetricsPublisher?, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
                                if (v31 <= 0x3F)
                                {
                                  v49 = *(v30 - 8) + 64;
                                  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_WorkoutBuddyStatePublisher?, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
                                  if (v33 <= 0x3F)
                                  {
                                    v50 = *(v32 - 8) + 64;
                                    swift_updateClassMetadata2();
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int WorkoutFeatures.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutFeatures()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutFeatures()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for WorkoutFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t AddWorkoutType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AddWorkoutType and conformance AddWorkoutType()
{
  result = lazy protocol witness table cache variable for type AddWorkoutType and conformance AddWorkoutType;
  if (!lazy protocol witness table cache variable for type AddWorkoutType and conformance AddWorkoutType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddWorkoutType and conformance AddWorkoutType);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AddWorkoutType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AddWorkoutType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance AddWorkoutType@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t MultiSportWorkoutConfiguration.workoutKitRepresentation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v11 >> 62))
  {
    v0 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v0)
    {
      goto LABEL_3;
    }

LABEL_13:

    MultiSportWorkoutConfiguration.displayName.getter();
    return SwimBikeRunWorkout.init(configurations:displayName:)();
  }

  v0 = __CocoaSet.count.getter();
  if (!v0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v0 & 0x8000000000000000) == 0)
  {
    v2 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F2E7A20](v2);
      }

      else
      {
        v4 = *(v11 + 8 * v2 + 32);
      }

      v5 = v4;
      v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v7 = *&v5[v6];
      v8 = objc_allocWithZone(MEMORY[0x277CCDC38]);
      v9 = v7;
      v10 = [v8 init];
      [v10 setActivityType_];
      [v10 setLocationType_];
      if ([v9 effectiveTypeIdentifier] == 46)
      {
        [v10 setSwimmingLocationType_];
      }

      ++v2;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v3 = *(v12 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v0 != v2);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id specialized static MultiSportWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:)(uint64_t a1, char *a2, void *a3)
{
  v7 = type metadata accessor for Date();
  v97 = *(v7 - 8);
  v8 = *(v97 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v69 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v88 = &v69 - v16;
  MEMORY[0x28223BE20](v15);
  v87 = &v69 - v17;
  v90 = type metadata accessor for SwimBikeRunWorkout.Activity();
  v18 = *(v90 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v90);
  v96 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for UUID();
  v21 = *(v91 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v91);
  v86 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v85 = &v69 - v26;
  MEMORY[0x28223BE20](v25);
  v98 = &v69 - v27;
  v28 = SwimBikeRunWorkout.activities.getter();
  v29 = *(v28 + 16);
  if (v29)
  {
    v70 = a2;
    v71 = a3;
    v72 = a1;
    v73 = v3;
    v104 = MEMORY[0x277D84F90];
    v30 = v28;
    v95 = v29;
    specialized ContiguousArray.reserveCapacity(_:)();
    v32 = *(v18 + 16);
    v31 = v18 + 16;
    v83 = v32;
    v33 = (*(v31 + 64) + 32) & ~*(v31 + 64);
    v69 = v30;
    v34 = v30 + v33;
    v82 = *(v31 + 56);
    v74 = (v97 + 16);
    v81 = (v97 + 8);
    v89 = (v21 + 16);
    v80 = (v97 + 56);
    v79 = (v21 + 56);
    v78 = (v21 + 8);
    v84 = v31;
    v77 = (v31 - 8);
    v76 = v11;
    v75 = v14;
    v35 = v90;
    do
    {
      v97 = v34;
      v83(v96, v34, v35);
      v36 = SwimBikeRunWorkout.Activity.hkConfiguration.getter();
      v94 = HKWorkoutConfiguration.fiuiWorkoutActivityType(isPartOfMultisport:)(1);

      v37 = objc_allocWithZone(MEMORY[0x277D0A838]);
      v92 = [v37 initWithGoalTypeIdentifier:0 value:{0, v69}];
      UUID.init()();
      v38 = v87;
      Date.init()();
      v39 = *v74;
      v40 = v88;
      (*v74)(v88, v38, v7);
      v41 = v75;
      v39(v75, v38, v7);
      v42 = v76;
      v39(v76, v38, v7);
      v43 = type metadata accessor for Occurrence();
      v44 = objc_allocWithZone(v43);
      *&v44[OBJC_IVAR____TtC11WorkoutCore10Occurrence_count] = 0;
      v39(&v44[OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate], v40, v7);
      v39(&v44[OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate], v41, v7);
      v39(&v44[OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate], v42, v7);
      v103.receiver = v44;
      v103.super_class = v43;
      v93 = objc_msgSendSuper2(&v103, sel_init);
      v45 = *v81;
      (*v81)(v42, v7);
      v45(v41, v7);
      v45(v40, v7);
      v45(v38, v7);
      v46 = *v89;
      v47 = v85;
      v48 = v91;
      (*v89)(v85, v98, v91);
      v49 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration());
      swift_beginAccess();
      v50 = v92;
      v100 = v92;
      type metadata accessor for NLSessionActivityGoal();
      v92 = v50;
      Published.init(initialValue:)();
      swift_endAccess();
      v51 = v86;
      v46(v86, v47, v48);
      *&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
      v52 = *v80;
      (*v80)(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v7);
      v52(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v7);
      v53 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
      v54 = type metadata accessor for WorkoutPlan.Route();
      (*(*(v54 - 8) + 56))(&v49[v53], 1, 1, v54);
      (*v79)(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v48);
      v55 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
      *&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
      v46(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v51, v48);
      v56 = v93;
      *&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v94;
      v49[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
      *&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v56;
      swift_beginAccess();
      *&v49[v55] = 0;
      v49[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
      v57 = type metadata accessor for WorkoutConfiguration();
      v99.receiver = v49;
      v99.super_class = v57;
      v35 = v90;
      objc_msgSendSuper2(&v99, sel_init);

      v58 = *v78;
      (*v78)(v51, v48);
      v58(v47, v48);
      v58(v98, v48);
      (*v77)(v96, v35);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v59 = v104[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v34 = v97 + v82;
      --v95;
    }

    while (v95);

    v60 = v104;
    a3 = v71;
    a2 = v70;
  }

  else
  {

    v46 = *(v21 + 16);
    v60 = MEMORY[0x277D84F90];
  }

  v61 = v98;
  v46(v98, a2, v91);
  v62 = specialized MultiSportWorkoutConfiguration.__allocating_init(_:uuid:occurrence:)(v60, v61, a3);
  v63 = SwimBikeRunWorkout.displayName.getter();
  if (v64)
  {
    v65 = v63;
    v66 = v64;
    swift_getKeyPath();
    swift_getKeyPath();
    v101 = v65;
    v102 = v66;
    v67 = v62;
    static Published.subscript.setter();
  }

  return v62;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Date?, @in_guaranteed Date?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (a2)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v10, v17, 1, v18);

  v14(v12, v10);

  _sSo8NSObjectCSgWOhTm_16(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return _sSo8NSObjectCSgWOhTm_16(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t DownhillSnowSportsAccumulator.distanceEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastUpdated;
  swift_beginAccess();
  return _s10Foundation4DateVSgWOcTm_8(v1 + v3, a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

double DownhillSnowSportsAccumulator.distance.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_distance;
  swift_beginAccess();
  return *(v0 + v1);
}

double DownhillSnowSportsAccumulator.averageSpeed.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_averageSpeed;
  swift_beginAccess();
  return *(v0 + v1);
}

double DownhillSnowSportsAccumulator.maximumSpeed.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_maximumSpeed;
  swift_beginAccess();
  return *(v0 + v1);
}

double DownhillSnowSportsAccumulator.descent.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_descent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DownhillSnowSportsAccumulator.downhillRunCount.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_downhillRunCount;
  swift_beginAccess();
  return *(v0 + v1);
}

void key path setter for DownhillSnowSportsAccumulator.lastRun : DownhillSnowSportsAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastRun;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *DownhillSnowSportsAccumulator.lastRun.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastRun;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id DownhillSnowSportsAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DownhillSnowSportsAccumulator.init()()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastUpdated;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_distance] = 0;
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_averageSpeed] = 0;
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_maximumSpeed] = 0;
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_descent] = 0;
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_downhillRunCount] = 0;
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastRun] = 0;
  v3 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_fakeDownhillRuns;
  v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_fakeDownhillRuns] = 0;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B468F40);
  v6 = [v4 BOOLForKey_];

  v0[v3] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CC1D48]) init];
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_skiTracker] = v7;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for DownhillSnowSportsAccumulator();
  v8 = objc_msgSendSuper2(&v14, sel_init);
  if (*(v8 + OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_fakeDownhillRuns) == 1)
  {
    v9 = objc_allocWithZone(type metadata accessor for FakeCMSkiTracker());
    v10 = v8;
    v11 = [v9 init];
    v12 = *&v10[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_skiTracker];
    *&v10[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_skiTracker] = v11;
  }

  return v8;
}

uint64_t type metadata accessor for DownhillSnowSportsAccumulator()
{
  result = type metadata singleton initialization cache for DownhillSnowSportsAccumulator;
  if (!type metadata singleton initialization cache for DownhillSnowSportsAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void closure #1 in DownhillSnowSportsAccumulator.accumulatorDidStart(withStart:handler:)(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    DownhillSnowSportsAccumulator.handle(data:error:)(a1, a2);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed CMLiveSkiData?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void DownhillSnowSportsAccumulator.handle(data:error:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v86 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v86 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v22 = &v86 - v21;
  if (!a2)
  {
    v92 = v19;
    if (!a1)
    {
      if (one-time initialization token for downhillSnowSports != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      __swift_project_value_buffer(v37, static WOLog.downhillSnowSports);
      v92 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v92, v38))
      {
        goto LABEL_7;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20AEA4000, v92, v38, "CMSkiTracker returned no live data)", v26, 2u);
      goto LABEL_6;
    }

    v86 = v20;
    v89 = v9;
    v87 = a1;
    v90 = a1;
    v31 = [v90 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastUpdated;
    swift_beginAccess();
    v88 = v32;
    v33 = v2;
    _s10Foundation4DateVSgWOcTm_8(v2 + v32, v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v34 = *(v13 + 48);
    v35 = v92;
    v36 = v34(v11, 1, v92);
    v91 = v13;
    if (v36 == 1)
    {
      static Date.distantPast.getter();
      if (v34(v11, 1, v35) != 1)
      {
        _sSo8NSObjectCSgWOhTm_16(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v13 + 32))(v18, v11, v35);
    }

    v39 = static Date.> infix(_:_:)();
    v40 = *(v91 + 8);
    v40(v18, v35);
    v40(v22, v35);
    if (v39)
    {
      v41 = v2;
      if (one-time initialization token for downhillSnowSports != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static WOLog.downhillSnowSports);
      v33 = v90;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      v45 = os_log_type_enabled(v43, v44);
      v46 = v89;
      if (v45)
      {
        v47 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v47 = 138412290;
        *(v47 + 4) = v33;
        *v40 = v87;
        v48 = v33;
        _os_log_impl(&dword_20AEA4000, v43, v44, "CMSkiTracker live update: %@", v47, 0xCu);
        _sSo8NSObjectCSgWOhTm_16(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v40, -1, -1);
        MEMORY[0x20F2E9420](v47, -1, -1);
      }

      v49 = [v33 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v91 + 56))(v46, 0, 1, v35);
      v35 = v88;
      swift_beginAccess();
      outlined assign with take of Date?(v46, v35 + v41);
      swift_endAccess();
      [v33 distance];
      v51 = v50;
      v52 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_distance;
      swift_beginAccess();
      *(&v41->isa + v52) = v51;
      [v33 averageSpeed];
      v54 = v53;
      v55 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_averageSpeed;
      swift_beginAccess();
      *(&v41->isa + v55) = v54;
      [v33 verticalDescent];
      v57 = v56;
      v58 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_descent;
      swift_beginAccess();
      *(&v41->isa + v58) = v57;
      [v33 maximumSpeed];
      v60 = v59;
      v61 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_maximumSpeed;
      swift_beginAccess();
      *(&v41->isa + v61) = v60;
      v62 = [v33 runCount];
      if ((v62 & 0x8000000000000000) == 0)
      {
        v63 = v62;
        v64 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_downhillRunCount;
        swift_beginAccess();
        *(&v41->isa + v64) = v63;
        v65 = [v41 updateHandler];
        if (v65)
        {
          v66 = v65;
          (*(v65 + 2))();

          _Block_release(v66);
        }

        else
        {
        }

        return;
      }

      __break(1u);
    }

    else if (one-time initialization token for downhillSnowSports == -1)
    {
      goto LABEL_28;
    }

    swift_once();
LABEL_28:
    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static WOLog.downhillSnowSports);
    v68 = v90;
    v92 = v33;
    v69 = v33;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v93[0] = v91;
      *v72 = 136315394;
      v73 = [v68 date];
      LODWORD(v90) = v71;
      v74 = v73;
      v75 = v86;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type Date and conformance Date();
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v77;
      v40(v75, v35);
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v93);

      *(v72 + 4) = v79;
      *(v72 + 12) = 2080;
      v80 = v89;
      _s10Foundation4DateVSgWOcTm_8(v88 + v92, v89, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v81 = Optional.description.getter();
      v83 = v82;
      _sSo8NSObjectCSgWOhTm_16(v80, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v93);

      *(v72 + 14) = v84;
      _os_log_impl(&dword_20AEA4000, v70, v90, "CMSkiTracker returned live data with date=%s older than lastUpdated=%s", v72, 0x16u);
      v85 = v91;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v85, -1, -1);
      MEMORY[0x20F2E9420](v72, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (one-time initialization token for downhillSnowSports != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static WOLog.downhillSnowSports);
  v24 = a2;
  v92 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v92, v25))
  {
    goto LABEL_7;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  *v26 = 138412290;
  v28 = a2;
  v29 = _swift_stdlib_bridgeErrorToNSError();
  *(v26 + 4) = v29;
  *v27 = v29;
  _os_log_impl(&dword_20AEA4000, v92, v25, "CMSkiTracker error handling live data. error=%@", v26, 0xCu);
  _sSo8NSObjectCSgWOhTm_16(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x20F2E9420](v27, -1, -1);
LABEL_6:
  MEMORY[0x20F2E9420](v26, -1, -1);
LABEL_7:
  v30 = v92;
}

void DownhillSnowSportsAccumulator.downhillRunDidComplete(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = v45 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v45 - v13;
  if (one-time initialization token for downhillSnowSports != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static WOLog.downhillSnowSports);
  v17 = a1;
  v45[1] = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v2;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v17;
    *v22 = v17;
    v23 = v17;
    _os_log_impl(&dword_20AEA4000, v18, v19, "downhillRunDidComplete completed_run=%@", v21, 0xCu);
    _sSo8NSObjectCSgWOhTm_16(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v22, -1, -1);
    v24 = v21;
    v2 = v20;
    MEMORY[0x20F2E9420](v24, -1, -1);
  }

  v25 = *(v8 + 16);
  v25(v14, &v17[OBJC_IVAR___WODownhillRun_startTime], v7);
  v26 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastRun;
  swift_beginAccess();
  v27 = *&v2[v26];
  if (v27)
  {
    v28 = v46;
    v25(v46, (v27 + OBJC_IVAR___WODownhillRun_endTime), v7);
    (*(v8 + 56))(v28, 0, 1, v7);
    (*(v8 + 32))(v12, v28, v7);
  }

  else
  {
    v29 = v46;
    (*(v8 + 56))(v46, 1, 1, v7);
    static Date.distantPast.getter();
    if ((*(v8 + 48))(v29, 1, v7) != 1)
    {
      _sSo8NSObjectCSgWOhTm_16(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v30 = static Date.> infix(_:_:)();
  v31 = *(v8 + 8);
  v31(v12, v7);
  v31(v14, v7);
  if (v30)
  {
    v32 = *&v2[v26];
    *&v2[v26] = v17;
    v33 = v17;
  }

  else
  {
    v34 = v17;
    v35 = v2;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v38 = 138412546;
      *(v38 + 4) = v34;
      *v39 = v34;
      *(v38 + 12) = 2080;
      v47 = *&v2[v26];
      v48 = v40;
      v41 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore11DownhillRunCSgMd, &_s11WorkoutCore11DownhillRunCSgMR);
      v42 = Optional.description.getter();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v48);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_20AEA4000, v36, v37, "downhillRunDidComplete completed run older than last run. completed_run=%@ last_run=%s", v38, 0x16u);
      _sSo8NSObjectCSgWOhTm_16(v39, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x20F2E9420](v40, -1, -1);
      MEMORY[0x20F2E9420](v38, -1, -1);
    }
  }
}

uint64_t DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  return MEMORY[0x2822009F8](DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:), 0, 0);
}

uint64_t DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v1 = v0[6].i64[1];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14HKWorkoutEventC_So10HKQuantityCtMd, &_sSo14HKWorkoutEventC_So10HKQuantityCtMR);
  v3 = swift_task_alloc();
  v0[8].i64[1] = v3;
  v4 = v0[7];
  *(v3 + 16) = v1;
  *(v3 + 24) = vextq_s8(v4, v4, 8uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore11DownhillRunCGMd, &_sSay11WorkoutCore11DownhillRunCGMR);
  v6 = *(MEMORY[0x277D859B8] + 4);
  v7 = swift_task_alloc();
  v0[9].i64[0] = v7;
  *v7 = v0;
  v7[1] = DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return MEMORY[0x282200740](&v0[6], v2, v5, 0, 0, &async function pointer to partial apply for closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:), v3, v2);
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v16 = v0;
  v1 = v0[12];
  type metadata accessor for DownhillRunsStats();
  v0[20] = swift_initStackObject();
  DownhillRunsStats.init(downhillRuns:)(v1);
  v0[21] = v2;
  if (one-time initialization token for downhillSnowSports != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.downhillSnowSports);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;

    v8 = DownhillRunsStats.description.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "DownhillSnowSportsAccumulator recovered downhill_runs_stats=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  type metadata accessor for MainActor();
  v0[22] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:), v13, v12);
}

{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[17];

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

void DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[16];

  closure #2 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(v4, v2);
  if (v3)
  {
  }

  else
  {

    MEMORY[0x2822009F8](DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:), 0, 0);
  }
}

uint64_t closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = type metadata accessor for Date();
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v8 = *(v7 + 64) + 15;
  v5[29] = swift_task_alloc();
  v9 = type metadata accessor for DateInterval();
  v5[30] = v9;
  v10 = *(v9 - 8);
  v5[31] = v10;
  v11 = *(v10 + 64) + 15;
  v5[32] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVySo14HKWorkoutEventC_So10HKQuantityCts5Error_p_GMd, &_sScg8IteratorVySo14HKWorkoutEventC_So10HKQuantityCts5Error_p_GMR);
  v5[33] = v12;
  v13 = *(v12 - 8);
  v5[34] = v13;
  v14 = *(v13 + 64) + 15;
  v5[35] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:), 0, 0);
}

uint64_t closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5[24];
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v27 = v5[24];
    }

    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_19:
    v28 = v5[35];
    v29 = v5[23];
    v30 = MEMORY[0x277D84F90];
    v5[20] = MEMORY[0x277D84F90];
    v31 = *v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14HKWorkoutEventC_So10HKQuantityCtMd, &_sSo14HKWorkoutEventC_So10HKQuantityCtMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    ThrowingTaskGroup.makeAsyncIterator()();
    v5[38] = v30;
    v32 = *(MEMORY[0x277D85828] + 4);
    v33 = swift_task_alloc();
    v5[39] = v33;
    *v33 = v5;
    v33[1] = closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
    v34 = v5[35];
    a4 = v5[33];
    v7 = (v5 + 18);
    a5 = v5 + 21;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822004E8](v7, a2, a3, a4, a5);
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v36 = v5[24] + 32;
    v37 = *v5[23];
    v38 = v6 & 0xC000000000000001;
    v39 = v7;
    while (1)
    {
      if (v38)
      {
        v10 = MEMORY[0x20F2E7A20](v8, v5[24]);
      }

      else
      {
        v10 = *(v36 + 8 * v8);
      }

      v11 = v10;
      v13 = v5[36];
      v12 = v5[37];
      v14 = v5[25];
      v15 = type metadata accessor for TaskPriority();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v12, 1, 1, v15);
      v17 = swift_allocObject();
      v17[2] = 0;
      v18 = v17 + 2;
      v17[3] = 0;
      v17[4] = v14;
      v17[5] = v11;
      _s10Foundation4DateVSgWOcTm_8(v12, v13, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v12) = (*(v16 + 48))(v13, 1, v15);
      v19 = v14;
      v20 = v11;
      v21 = v5[36];
      if (v12 == 1)
      {
        _sSo8NSObjectCSgWOhTm_16(v5[36], &_sScPSgMd, &_sScPSgMR);
        if (!*v18)
        {
          goto LABEL_13;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v16 + 8))(v21, v15);
        if (!*v18)
        {
LABEL_13:
          v23 = 0;
          v25 = 0;
          goto LABEL_14;
        }
      }

      v22 = v17[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = dispatch thunk of Actor.unownedExecutor.getter();
      v25 = v24;
      swift_unknownObjectRelease();
LABEL_14:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14HKWorkoutEventC_So10HKQuantityCtMd, &_sSo14HKWorkoutEventC_So10HKQuantityCtMR);
      v26 = (v25 | v23);
      if (v25 | v23)
      {
        v26 = v5 + 8;
        v5[8] = 0;
        v5[9] = 0;
        v5[10] = v23;
        v5[11] = v25;
      }

      ++v8;
      v9 = v5[37];
      v5[12] = 1;
      v5[13] = v26;
      v5[14] = v37;
      swift_task_create();

      _sSo8NSObjectCSgWOhTm_16(v9, &_sScPSgMd, &_sScPSgMR);
      if (v39 == v8)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
  return MEMORY[0x2822004E8](v7, a2, a3, a4, a5);
}

uint64_t closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 304);

    v5 = closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
  }

  else
  {
    v5 = closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = v0[18];
  if (v1)
  {
    v36 = v0[18];
    v37 = v0[19];
    v2 = v0[32];
    v34 = v0[31];
    v3 = v0[29];
    v35 = v0[30];
    v5 = v0[27];
    v4 = v0[28];
    v33 = v0[26];
    v6 = [v1 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    DateInterval.start.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v8 = *(v4 + 8);
    v8(v3, v5);
    DateInterval.end.getter();
    v9 = Date._bridgeToObjectiveC()().super.isa;
    v8(v3, v5);
    type metadata accessor for HKWorkoutEvent();
    v10 = Array._bridgeToObjectiveC()().super.isa;
    v0[6] = _s11WorkoutCore11DownhillRunC09calculateA4Time12dateInterval17pauseResumeEventsSd10Foundation04DateH0V_SaySo14HKWorkoutEventCGSgtFZyAG0M0VSg_APtcfU_TA_0;
    v0[7] = v7;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@in_guaranteed Date?, @in_guaranteed Date?) -> ();
    v0[5] = &block_descriptor_77;
    v11 = _Block_copy(v0 + 2);
    v12 = v0[7];

    _HKEnumerateActiveWorkoutIntervalsStartingPaused();
    _Block_release(v11);

    (*(v34 + 8))(v2, v35);
    swift_beginAccess();
    v13 = *(v7 + 16);

    v14 = objc_allocWithZone(type metadata accessor for DownhillRun());
    v15 = v36;
    v16 = v37;
    v17 = specialized DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(v15, v37, 0, v13);

    v18 = v17;
    MEMORY[0x20F2E6F30]();
    if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v30 = *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v0[38] = v0[20];
    v19 = *(MEMORY[0x277D85828] + 4);
    v20 = swift_task_alloc();
    v0[39] = v20;
    *v20 = v0;
    v20[1] = closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
    v21 = v0[35];
    v22 = v0[33];

    return MEMORY[0x2822004E8](v0 + 18, 0, 0, v22, v0 + 21);
  }

  else
  {
    v23 = v0[37];
    v24 = v0[38];
    v25 = v0[36];
    v26 = v0[32];
    v27 = v0[29];
    v28 = v0[22];
    (*(v0[34] + 8))(v0[35], v0[33]);
    *v28 = v24;

    v29 = v0[1];

    return v29();
  }
}

{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[32];
  v4 = v0[29];
  (*(v0[34] + 8))(v0[35], v0[33]);
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return HKHealthStore.distance(for:)(a5);
}

uint64_t closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:), 0, 0);
  }
}

uint64_t closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v1 = v0[5];
  if (!v1)
  {
    v2 = [objc_opt_self() meterUnit];
    v1 = [objc_opt_self() quantityWithUnit:v2 doubleValue:0.0];
  }

  v4 = v0[2];
  v3 = v0[3];
  *v4 = v3;
  v4[1] = v1;
  v7 = v0[1];
  v5 = v3;

  return v7();
}

void closure #2 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(char *a1, void *a2)
{
  v4 = a2[3];
  v5 = MEMORY[0x20F2E6C00](7548781, 0xE300000000000000);
  v6 = objc_opt_self();
  v7 = [v6 unitFromString_];

  [v4 doubleValueForUnit_];
  v9 = v8;

  v10 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_averageSpeed;
  swift_beginAccess();
  *&a1[v10] = v9;
  v11 = a2[4];
  v12 = 0;
  v13 = 0;
  if (v11)
  {
    v14 = MEMORY[0x20F2E6C00](7548781, 0xE300000000000000);
    v15 = [v6 unitFromString_];

    [v11 doubleValueForUnit_];
    v13 = v16;
  }

  v17 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_maximumSpeed;
  swift_beginAccess();
  *&a1[v17] = v13;
  v18 = a2[8];
  if (v18)
  {
    v19 = [v6 meterUnit];
    [v18 doubleValueForUnit_];
    v12 = v20;
  }

  v21 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_descent;
  swift_beginAccess();
  *&a1[v21] = v12;
  v22 = a2[5];
  v23 = [v6 meterUnit];
  [v22 doubleValueForUnit_];
  v25 = v24;

  v26 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_distance;
  swift_beginAccess();
  *&a1[v26] = v25;
  v27 = a2[9];
  if (v27 < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_downhillRunCount;
    swift_beginAccess();
    *&a1[v28] = v27;
    v29 = [a1 updateHandler];
    if (v29)
    {
      v30 = v29;
      (*(v29 + 2))();
      _Block_release(v30);
    }
  }
}

uint64_t @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(int a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  type metadata accessor for HKWorkoutEvent();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v8;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v9;
  v10 = a3;
  a5;
  v11 = swift_task_alloc();
  v5[7] = v11;
  *v11 = v5;
  v11[1] = @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(v8, v9, v10);
}

uint64_t @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  v11 = *(v3 + 32);
  if (v2)
  {
    v12 = _convertErrorToNSError(_:)();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v13 = *(v10 + 8);

  return v13();
}

id DownhillSnowSportsAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownhillSnowSportsAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall DownhillSnowSportsAccumulator.isPaceAvailable()()
{
  if (*(v0 + OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_fakeDownhillRuns))
  {
    return 1;
  }

  else
  {
    return [objc_opt_self() isAvailable];
  }
}

void specialized DownhillSnowSportsAccumulator.accumulatorDidStart(withStart:handler:)()
{
  if ((*(v0 + OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_fakeDownhillRuns) & 1) != 0 || [objc_opt_self() isAvailable])
  {
    v1 = *(v0 + OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_skiTracker);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in DownhillSnowSportsAccumulator.accumulatorDidStart(withStart:handler:);
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CMLiveSkiData?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_67_0;
    v3 = _Block_copy(aBlock);
    v4 = v1;

    [v4 startLiveUpdatesWithHandler_];
    _Block_release(v3);
  }

  else
  {
    if (one-time initialization token for downhillSnowSports != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.downhillSnowSports);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v6, "CMSkiTracker not available on this device, not accumulating.", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }
  }
}

uint64_t partial apply for closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(a1, a2, v6, v7, v8);
}

double keypath_getTm_9@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_setTm_9(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void type metadata completion function for DownhillSnowSportsAccumulator()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x190);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return v12(a1, a2, a3);
}

uint64_t partial apply for @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(v2, v3, v4, v5, v6);
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTATQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t objectdestroy_40Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _s10Foundation4DateVSgWOcTm_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *static ZoneTrackerFactory.make(activityType:liveWorkoutConfiguration:distanceUnit:metadataSavingDelegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = LiveWorkoutConfiguration.currentTargetZones.getter();
  v24 = type metadata accessor for ZoneTracker();
  v9 = objc_allocWithZone(v24);
  v22 = OBJC_IVAR___NLWorkoutZoneTracker_alertDelegate;
  swift_unknownObjectWeakInit();
  v10 = v9 + OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate;
  *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_currentDistance) = 0;
  *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_currentDuration) = 0;
  v12 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  v13 = a1;
  v23 = a3;
  v26 = a4;
  swift_unknownObjectRetain();
  *&v12[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore0D9AlertZoneCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v14 = OBJC_IVAR___NLWorkoutZoneTracker_metadataSavingDelegate;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_activityType) = v13;
  v16 = v13;
  v17 = specialized static ZoneTracker.targetZoneDictionary(from:)(v8);
  if (v4)
  {

    swift_unknownObjectRelease();

    sub_20AEDF83C(v9 + v22);
    sub_20AEDF83C(v10);

    v18 = *&v12[v9];

    sub_20AEDF83C(v9 + v14);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v17;

    *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates) = v19;
    *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit) = v23;
    *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts) = 1;
    *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts) = 0x402E000000000000;
    *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_alertsHoldoffTime) = 0x404E000000000000;
    swift_unknownObjectWeakAssign();
    v25.receiver = v9;
    v25.super_class = v24;
    v20 = v23;
    v12 = objc_msgSendSuper2(&v25, sel_init);

    swift_unknownObjectRelease();
  }

  return v12;
}

id ZoneTrackerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ZoneTrackerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ZoneTrackerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ZoneTrackerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ZoneTrackerFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *MSSuggestion.minify()()
{
  v0 = MSSuggestion.legacyIntent.getter();
  if (v0)
  {
    v1 = v0;
    v2 = INPlayMediaIntent.minify()();
    v3 = [v32 bundleID];
    if (!v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = MEMORY[0x20F2E6C00](v4);
    }

    v5 = [v32 suggestionSource];
    v6 = [objc_allocWithZone(MEMORY[0x277D27FB8]) initWithIntent:v2 bundleID:v3 suggestionSource:v5];

    return v6;
  }

  v7 = MEMORY[0x277D27F90];
  v8 = *MEMORY[0x277D27F90];
  swift_beginAccess();
  v9 = *&v32[v8];
  if (v9)
  {
    v10 = v9;
    v11 = [v32 identifier];
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v18 = MSPlayMediaAppIntent.minify(identifier:)();

    MSPlayMediaAppIntent.intentAction.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21MSMediaIntentProtocol_pMd, &_sSo21MSMediaIntentProtocol_pMR);
    swift_dynamicCast();
    v19 = [v32 bundleID];
    if (!v19)
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = MEMORY[0x20F2E6C00](v20);
    }

    v21 = [objc_allocWithZone(MEMORY[0x277D27FC0]) initWithIntent:v33 bundleID:v19];
    swift_unknownObjectRelease();

    v22 = [v32 bundleID];
    if (!v22)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = MEMORY[0x20F2E6C00](v23);
    }

    v24 = [v32 suggestionSource];
    v25 = objc_allocWithZone(MEMORY[0x277D27FB8]);
    v26 = v21;
    v6 = [v25 initWithUnifiedIntent:v26 bundleID:v22 suggestionSource:v24];

    v27 = [v32 identifier];
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v29 = MSPlayMediaAppIntent.minify(identifier:)();

    v30 = *v7;
    swift_beginAccess();
    v31 = *&v6[v30];
    *&v6[v30] = v29;

    return v6;
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.mediaPlayback);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_20AEA4000, v14, v15, "Unknown state: attempting to minify MSSuggestion without known intent, returning without changes", v16, 2u);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  return v32;
}

uint64_t INPlayMediaIntent.minify()()
{
  v1 = v0;
  v2 = [v0 mediaItems];
  if (!v2)
  {
    isa = 0;
    goto LABEL_14;
  }

  v3 = v2;
  type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for INMediaItem, 0x277CD3DB8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_13:

    isa = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  v26.value.super.isa = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F2E7A20](v7, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    INMediaItem.minify()();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v10 = *(v26.value.super.isa + 2);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v5 != v7);

  isa = v26.value.super.isa;
LABEL_14:
  v12 = [v1 mediaContainer];
  if (v12)
  {
    v13 = v12;
    v14 = INMediaItem.minify()();
  }

  else
  {
    v14 = 0;
  }

  type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for INPlayMediaIntent, 0x277CD3EC0);
  v15 = INPlayMediaIntent.playShuffled.getter();
  v16 = [v1 playbackRepeatMode];
  v17.value = INPlayMediaIntent.resumePlayback.getter();
  v18 = [v1 playbackQueueLocation];
  v19.value = INPlayMediaIntent.playbackSpeed.getter();
  v21 = v20;
  v22 = [v1 mediaSearch];
  v29.is_nil = v22;
  v27.value._rawValue = isa;
  v27.is_nil = v14;
  v28.value.super.isa = v15;
  v28.is_nil = v16;
  v24 = INPlayMediaIntent.init(mediaItems:mediaContainer:playShuffled:playbackRepeatMode:resumePlayback:playbackQueueLocation:playbackSpeed:mediaSearch:)(v23, v27, v28, v17, v18, v19, (v21 & 1), v29, v26);
  v25 = [v1 launchId];
  [(INPlayMediaIntent *)v24 _setLaunchId:v25];

  return v24;
}

uint64_t MSPlayMediaAppIntent.minify(identifier:)()
{
  MSPlayMediaAppIntent.intentAction.getter();
  v0 = type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for LNAction, 0x277D23720);
  if (swift_dynamicCast())
  {
    v1 = LNAction.minify()();

    *(&v4 + 1) = v0;
    *&v3 = v1;
    outlined init with take of Any(&v3, &v5);
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
    MSPlayMediaAppIntent.intentAction.getter();
  }

  MSPlayMediaAppIntent.bundleID.getter();
  MSPlayMediaAppIntent.date.getter();
  MSPlayMediaAppIntent.suggestionSource.getter();
  objc_allocWithZone(type metadata accessor for MSPlayMediaAppIntent());

  return MSPlayMediaAppIntent.init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)();
}

id INMediaItem.minify()()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = [v0 title];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v30 = [v0 type];
  v11 = [v0 artist];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [v0 topics];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v0 namedEntities];
  if (v19)
  {
    v20 = v19;
    type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v0 privateMediaItemValueData];
  if (v5)
  {
    v23 = MEMORY[0x20F2E6C00](v3, v5);

    if (v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v23 = 0;
    if (v10)
    {
LABEL_18:
      v24 = MEMORY[0x20F2E6C00](v8, v10);

      if (v15)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }
  }

  v24 = 0;
  if (v15)
  {
LABEL_19:
    v25 = MEMORY[0x20F2E6C00](v13, v15);

    if (v18)
    {
      goto LABEL_20;
    }

LABEL_25:
    v26.super.isa = 0;
    if (v21)
    {
      goto LABEL_21;
    }

LABEL_26:
    v27.super.isa = 0;
    goto LABEL_27;
  }

LABEL_24:
  v25 = 0;
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_20:
  type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v26.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (!v21)
  {
    goto LABEL_26;
  }

LABEL_21:
  type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_27:
  v28 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v23 title:v24 type:v30 artwork:0 artist:v25 topics:v26.super.isa namedEntities:v27.super.isa privateMediaItemValueData:v22];

  return v28;
}

id LNAction.minify()()
{
  v1 = [v0 parameters];
  type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for LNProperty, 0x277D238D8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (v9 == 0x746E456F69647561 && v11 == 0xEB00000000797469)
      {

LABEL_17:

        v14 = [v6 value];

        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = [v14 value];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for LNEntity, 0x277D237F0);
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_50;
        }

        v110 = v14;
        v16 = v116;
        v17 = &selRef_totalDiskCapacity;
        v2 = [v116 properties];
        v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v116 = MEMORY[0x277D84F90];
        if (v18 >> 62)
        {
          v19 = __CocoaSet.count.getter();
          v111 = v16;
          if (v19)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v111 = v16;
          if (v19)
          {
LABEL_21:
            v20 = 0;
            v113 = v18 & 0xFFFFFFFFFFFFFF8;
            v114 = v18 & 0xC000000000000001;
            v109 = v18;
            v21 = v18 + 32;
            while (1)
            {
              if (v114)
              {
                v22 = MEMORY[0x20F2E7A20](v20, v109);
              }

              else
              {
                if (v20 >= *(v113 + 16))
                {
                  goto LABEL_47;
                }

                v22 = *(v21 + 8 * v20);
              }

              v23 = v22;
              if (__OFADD__(v20++, 1))
              {
                goto LABEL_46;
              }

              if (one-time initialization token for EntityPropertyIdentifierAllowlist != -1)
              {
                swift_once();
              }

              v25 = EntityPropertyIdentifierAllowlist;
              v2 = [v23 identifier];
              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;

              if (v25[2] && (v29 = v25[5], Hasher.init(_seed:)(), String.hash(into:)(), v30 = Hasher._finalize()(), v2 = (v25 + 7), v31 = -1 << *(v25 + 32), v32 = v30 & ~v31, ((*(v25 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v32) & 1) != 0))
              {
                v33 = ~v31;
                while (1)
                {
                  v34 = (v25[6] + 16 * v32);
                  v35 = *v34 == v26 && v34[1] == v28;
                  if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v32 = (v32 + 1) & v33;
                  if (((*(v2 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                  {
                    goto LABEL_22;
                  }
                }

                v2 = &v116;
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v36 = *(v116 + 16);
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                if (v20 == v19)
                {
LABEL_43:
                  v37 = v116;
                  v16 = v111;
                  v17 = &selRef_totalDiskCapacity;
                  goto LABEL_59;
                }
              }

              else
              {
LABEL_22:

                if (v20 == v19)
                {
                  goto LABEL_43;
                }
              }
            }
          }
        }

        v37 = MEMORY[0x277D84F90];
LABEL_59:

        v116 = v37;
        v43 = [v16 v17[124]];
        v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v44 >> 62)
        {
LABEL_89:
          v45 = __CocoaSet.count.getter();
          if (v45)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v45)
          {
LABEL_61:
            v46 = 0;
            while (1)
            {
              if ((v44 & 0xC000000000000001) != 0)
              {
                v47 = MEMORY[0x20F2E7A20](v46, v44);
              }

              else
              {
                if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_88;
                }

                v47 = *(v44 + 8 * v46 + 32);
              }

              v48 = v47;
              v49 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                __break(1u);
LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

              v50 = [v47 identifier];
              v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v53 = v52;

              if (v51 == 2003789939 && v53 == 0xE400000000000000)
              {
                break;
              }

              v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v55)
              {
                goto LABEL_75;
              }

              ++v46;
              if (v49 == v45)
              {
                goto LABEL_90;
              }
            }

LABEL_75:

            v56 = [v48 value];
            v57 = v111;
            if (!v56)
            {

              goto LABEL_91;
            }

            v58 = v56;
            v59 = [v56 value];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_91;
            }

            v60 = [v115 isTransient];
            v61 = [v115 identifier];
            v62 = [v115 managedAccountIdentifier];
            if (v62)
            {
              v63 = v62;
              v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v66 = v65;

              v67.super.isa = Array._bridgeToObjectiveC()().super.isa;
              if (v66)
              {
                v68 = MEMORY[0x20F2E6C00](v64, v66);

                goto LABEL_84;
              }
            }

            else
            {
              v67.super.isa = Array._bridgeToObjectiveC()().super.isa;
            }

            v68 = 0;
LABEL_84:
            v69 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithTransient:v60 identifier:v61 properties:v67.super.isa managedAccountIdentifier:v68];

            v70 = v69;
            v71 = [v58 valueType];
            v72 = objc_allocWithZone(MEMORY[0x277D23958]);
            v73 = v70;
            v74 = [v72 initWithValue:v73 valueType:v71 displayRepresentation:0];

            v75 = objc_allocWithZone(MEMORY[0x277D238D8]);
            v76 = v74;
            v77 = MEMORY[0x20F2E6C00](2003789939, 0xE400000000000000);
            v78 = [v75 initWithIdentifier:v77 value:v76];

            v79 = v78;
            MEMORY[0x20F2E6F30]();
            if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v57 = v111;
LABEL_91:
            v80 = [v57 isTransient];
            v81 = [v57 identifier];
            v82 = [v57 managedAccountIdentifier];
            if (v82)
            {
              v83 = v82;
              v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v86 = v85;
            }

            else
            {
              v84 = 0;
              v86 = 0;
            }

            v87.super.isa = Array._bridgeToObjectiveC()().super.isa;

            if (v86)
            {
              v88 = MEMORY[0x20F2E6C00](v84, v86);
            }

            else
            {
              v88 = 0;
            }

            v89 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithTransient:v80 identifier:v81 properties:v87.super.isa managedAccountIdentifier:v88];

            v90 = v89;
            v91 = v110;
            v92 = [v110 valueType];
            v93 = [v110 displayRepresentation];
            if (v93)
            {
              v94 = v93;
              v95 = [v93 title];
              v96 = [v94 subtitle];
              v97 = [objc_allocWithZone(MEMORY[0x277D237D8]) initWithTitle:v95 subtitle:v96 image:0];

              v91 = v110;
            }

            else
            {
              v97 = 0;
            }

            v98 = objc_allocWithZone(MEMORY[0x277D23958]);
            v99 = v90;
            v100 = [v98 initWithValue:v99 valueType:v92 displayRepresentation:v97];

            v101 = objc_allocWithZone(MEMORY[0x277D238D8]);
            v102 = v100;
            v103 = MEMORY[0x20F2E6C00](0x746E456F69647561, 0xEB00000000797469);
            v104 = [v101 initWithIdentifier:v103 value:v102];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v105 = swift_allocObject();
            *(v105 + 16) = xmmword_20B425990;
            *(v105 + 32) = v104;
            v106 = v104;
            isa = Array._bridgeToObjectiveC()().super.isa;

            v108 = [v112 actionWithParameters_];

            return v108;
          }
        }

LABEL_90:

        v57 = v111;
        goto LABEL_91;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_17;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

LABEL_49:

LABEL_50:
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static WOLog.mediaPlayback);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_20AEA4000, v39, v40, "Unknown state: attempting to minify LNAction but no audioEntity parameter was found, returning without changes", v41, 2u);
    MEMORY[0x20F2E9420](v41, -1, -1);
  }

  return v112;
}