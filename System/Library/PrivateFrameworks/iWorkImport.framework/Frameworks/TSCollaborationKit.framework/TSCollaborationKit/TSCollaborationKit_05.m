uint64_t sub_27662F120(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637480(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver::~CollaborationCommandHistoryOriginatingCommandAcknowledgementObserver);
}

void *sub_27662F1AC(uint64_t a1)
{
  v2 = sub_27662F220(a1, 1);
  *v2 = &unk_28856F998;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DocumentSupportCollaborationState_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_27662F220(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766374B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::DocumentSupportCollaborationState::~DocumentSupportCollaborationState);
}

uint64_t sub_27662F2AC(uint64_t a1)
{
  v2 = sub_27662F328(a1, 1);
  *v2 = &unk_28856FA48;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SetAnnotationAuthorColorCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27662F328(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766374E0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCK::SetAnnotationAuthorColorCommandArchive::~SetAnnotationAuthorColorCommandArchive);
}

uint64_t sub_27662F3B4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637510(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCK::SetActivityAuthorShareParticipantIDCommandArchive::~SetActivityAuthorShareParticipantIDCommandArchive);
}

void *sub_27662F440(uint64_t a1)
{
  v2 = sub_27662F4B4(a1, 1);
  *v2 = &unk_28856FBA8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_IdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27662F4B4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637540(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::IdOperationArgs::~IdOperationArgs);
}

uint64_t sub_27662F540(uint64_t a1)
{
  v2 = sub_27662F5B8(a1, 1);
  *v2 = &unk_28856FC58;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_AddIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_27662F5B8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637570(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::AddIdOperationArgs::~AddIdOperationArgs);
}

uint64_t sub_27662F644(uint64_t a1)
{
  v2 = sub_27662F6BC(a1, 1);
  *v2 = &unk_28856FD08;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_RemoveIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_27662F6BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766375A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::RemoveIdOperationArgs::~RemoveIdOperationArgs);
}

void *sub_27662F748(uint64_t a1)
{
  v2 = sub_27662F7BC(a1, 1);
  *v2 = &unk_28856FDB8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_RearrangeIdOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_27662F7BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766375D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::RearrangeIdOperationArgs::~RearrangeIdOperationArgs);
}

void *sub_27662F848(uint64_t a1)
{
  v2 = sub_27662F8BC(a1, 1);
  *v2 = &unk_28856FE68;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_IdPlacementOperationArgs_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_27662F8BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637600(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::IdPlacementOperationArgs::~IdPlacementOperationArgs);
}

uint64_t sub_27662F948(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637630(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCK::ActivityCommitCommandArchive::~ActivityCommitCommandArchive);
}

void *sub_27662F9D4(uint64_t a1)
{
  v2 = sub_27662FA48(a1, 1);
  *v2 = &unk_28856FFC8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ExecuteTestBetweenRollbackAndReapplyCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27662FA48(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637660(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::ExecuteTestBetweenRollbackAndReapplyCommandArchive::~ExecuteTestBetweenRollbackAndReapplyCommandArchive);
}

uint64_t sub_27662FAD4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637690(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::CreateLocalStorageSnapshotCommandArchive::~CreateLocalStorageSnapshotCommandArchive);
}

void *sub_27662FB60(uint64_t a1)
{
  v2 = sub_27662FBD4(a1, 1);
  *v2 = &unk_288570128;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_BlockDiffsAtCurrentRevisionCommand_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27662FBD4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766376C0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::BlockDiffsAtCurrentRevisionCommand::~BlockDiffsAtCurrentRevisionCommand);
}

void *sub_27662FC60(uint64_t a1)
{
  v2 = sub_27662FCD8(a1, 1);
  *v2 = &unk_2885701D8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_TransformerEntry_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_27662FCD8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766376F0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCK::TransformerEntry::~TransformerEntry);
}

uint64_t sub_27662FD64(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637720(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSCK::CollaborationAppliedCommandDocumentRevisionMapping::~CollaborationAppliedCommandDocumentRevisionMapping);
}

uint64_t sub_27662FDF0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637750(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::~CollaborationDocumentSessionState_AcknowledgementObserverEntry);
}

uint64_t sub_27662FE7C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637780(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 320, TSCK::CollaborationDocumentSessionState::~CollaborationDocumentSessionState);
}

void *sub_27662FF08(uint64_t a1)
{
  v2 = sub_27662FF7C(a1, 1);
  *v2 = &unk_288570498;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_OperationStorageEntryArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27662FF7C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766377BC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::OperationStorageEntryArray::~OperationStorageEntryArray);
}

uint64_t sub_276630008(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766377EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCK::OperationStorageEntryArraySegment::~OperationStorageEntryArraySegment);
}

uint64_t sub_276630094(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27663781C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 136, TSCK::OperationStorage::~OperationStorage);
}

void *sub_276630120(uint64_t a1)
{
  v2 = sub_276630194(a1, 1);
  *v2 = &unk_2885706A8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_OutgoingCommandQueue_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276630194(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637858(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::OutgoingCommandQueue::~OutgoingCommandQueue);
}

void *sub_276630220(uint64_t a1)
{
  v2 = sub_276630294(a1, 1);
  *v2 = &unk_288570758;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_OutgoingCommandQueueSegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276630294(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637888(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::OutgoingCommandQueueSegment::~OutgoingCommandQueueSegment);
}

uint64_t sub_276630320(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766378B8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCK::CommandAssetChunkArchive::~CommandAssetChunkArchive);
}

uint64_t sub_2766303AC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766378E8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::~AssetUploadStatusCommandArchive_AssetUploadStatusInfo);
}

uint64_t sub_276630438(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637918(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCK::AssetUploadStatusCommandArchive::~AssetUploadStatusCommandArchive);
}

uint64_t sub_2766304C4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637948(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCK::AssetUnmaterializedOnServerCommandArchive::~AssetUnmaterializedOnServerCommandArchive);
}

uint64_t sub_276630550(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637978(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCK::CollaboratorCursorArchive::~CollaboratorCursorArchive);
}

uint64_t sub_2766305DC(uint64_t a1)
{
  v2 = sub_276630660(a1, 1);
  *v2 = &unk_288570B78;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 72) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276630660(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766379A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSCK::ActivityStreamArchive::~ActivityStreamArchive);
}

void *sub_2766306EC(uint64_t a1)
{
  v2 = sub_276630760(a1, 1);
  *v2 = &unk_288570C28;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamActivityArray_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276630760(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2766379D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::ActivityStreamActivityArray::~ActivityStreamActivityArray);
}

void *sub_2766307EC(uint64_t a1)
{
  v2 = sub_276630860(a1, 1);
  *v2 = &unk_288570CD8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamActivityArraySegment_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276630860(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637A08(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::ActivityStreamActivityArraySegment::~ActivityStreamActivityArraySegment);
}

uint64_t sub_2766308EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637A38(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 120, TSCK::ActivityArchive::~ActivityArchive);
}

uint64_t sub_276630978(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637A74(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSCK::ActivityAuthorArchive::~ActivityAuthorArchive);
}

uint64_t sub_276630A04(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637AA4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCK::CommandActivityBehaviorArchive::~CommandActivityBehaviorArchive);
}

uint64_t sub_276630A90(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637AD4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSCK::ActivityCursorCollectionArchive::~ActivityCursorCollectionArchive);
}

void *sub_276630B1C(uint64_t a1)
{
  v2 = sub_276630B90(a1, 1);
  *v2 = &unk_288571048;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ActivityCursorCollectionPersistenceWrapperArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276630B90(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637B04(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::ActivityCursorCollectionPersistenceWrapperArchive::~ActivityCursorCollectionPersistenceWrapperArchive);
}

uint64_t sub_276630C1C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637B34(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCK::ActivityNavigationInfoArchive::~ActivityNavigationInfoArchive);
}

uint64_t sub_276630CA8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637B64(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCK::CommentActivityNavigationInfoArchive::~CommentActivityNavigationInfoArchive);
}

uint64_t sub_276630D34(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637B94(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::~ActivityAuthorCacheArchive_ShareParticipantIDCache);
}

uint64_t sub_276630DC0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637BC4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::ActivityAuthorCacheArchive_PublicIDCache::~ActivityAuthorCacheArchive_PublicIDCache);
}

void *sub_276630E4C(uint64_t a1)
{
  v2 = sub_276630EC0(a1, 1);
  *v2 = &unk_2885713B8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_IndexCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276630EC0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637BF4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::ActivityAuthorCacheArchive_IndexCache::~ActivityAuthorCacheArchive_IndexCache);
}

void *sub_276630F4C(uint64_t a1)
{
  v2 = sub_276630FC0(a1, 1);
  *v2 = &unk_288571468;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_FirstJoinCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276630FC0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637C24(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::ActivityAuthorCacheArchive_FirstJoinCache::~ActivityAuthorCacheArchive_FirstJoinCache);
}

uint64_t sub_27663104C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637C54(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 176, TSCK::ActivityAuthorCacheArchive::~ActivityAuthorCacheArchive);
}

void *sub_2766310D8(uint64_t a1)
{
  v2 = sub_27663114C(a1, 1);
  *v2 = &unk_2885715C8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ActivityOnlyCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27663114C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637C90(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCK::ActivityOnlyCommandArchive::~ActivityOnlyCommandArchive);
}

uint64_t sub_2766311D8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637CC0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCK::ActivityNotificationItemArchive::~ActivityNotificationItemArchive);
}

uint64_t sub_276631264(uint64_t a1)
{
  v2 = sub_2766312DC(a1, 1);
  *v2 = &unk_288571728;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2766312DC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637CF0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::~ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts);
}

uint64_t sub_276631368(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637D20(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSCK::ActivityNotificationParticipantCacheArchive::~ActivityNotificationParticipantCacheArchive);
}

uint64_t sub_2766313F4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637D50(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSCK::ActivityNotificationQueueArchive::~ActivityNotificationQueueArchive);
}

uint64_t sub_276631480(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637D80(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSCK::ActivityStreamTransformationStateArchive::~ActivityStreamTransformationStateArchive);
}

uint64_t sub_27663150C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637DB0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276631594);
}

uint64_t sub_2766315B4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637DE0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27663163C);
}

uint64_t sub_27663165C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637E10(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCK::ActivityStreamActivityCounterArchive::~ActivityStreamActivityCounterArchive);
}

uint64_t sub_2766316E8(uint64_t a1)
{
  v2 = sub_276631760(a1, 1);
  *v2 = &unk_288571BF8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276631760(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637E40(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::~ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType);
}

uint64_t sub_2766317EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276637E70(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive::~ActivityStreamRemovedAuthorAuditorPendingStateArchive);
}

uint64_t *sub_2766318F8(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

uint64_t sub_276631924()
{
  google::protobuf::internal::AddDescriptors();
  if (atomic_load_explicit(scc_info_CommentActivityNavigationInfoArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSCK::CommentActivityNavigationInfoArchive::comment_activity_navigation_info = 100;
  qword_2812FABD0 = &TSCK::_CommentActivityNavigationInfoArchive_default_instance_;

  return sub_27662EA64(100, 11, 0);
}

uint64_t sub_276632088()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81420];
  *MEMORY[0x277D81420] = v0;

  return MEMORY[0x2821F96F8]();
}

id sub_276632BE4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v8 = objc_msgSend_whitespaceCharacterSet(v3, v5, v6, v7);
  v11 = objc_msgSend_stringByTrimmingCharactersInSet_(v4, v9, v8, v10);

  return v11;
}

id sub_276632C58(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v65[2] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], a2, a3, a4);
  v8 = objc_msgSend_stringByTrimmingCharactersInSet_(a1, v6, v5, v7);

  v12 = objc_msgSend_stringByRemovingPercentEncoding(v8, v9, v10, v11);

  if (!v12)
  {
    v12 = a1;
  }

  v15 = objc_msgSend_rangeOfString_(v12, v13, @"#", v14);
  if (v12)
  {
    v19 = v15 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v30 = objc_msgSend_URLFragmentAllowedCharacterSet(MEMORY[0x277CCA900], v16, v17, v18);
    v45 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v12, v20, v30, v21);
  }

  else
  {
    v22 = v15;
    v23 = objc_msgSend_substringToIndex_(v12, v16, v15, v18);
    v27 = objc_msgSend_URLFragmentAllowedCharacterSet(MEMORY[0x277CCA900], v24, v25, v26);
    v30 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v23, v28, v27, v29);

    v33 = objc_msgSend_substringFromIndex_(v12, v31, v22 + 1, v32);
    v37 = objc_msgSend_URLFragmentAllowedCharacterSet(MEMORY[0x277CCA900], v34, v35, v36);
    v40 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v33, v38, v37, v39);

    v65[0] = v30;
    v65[1] = v40;
    v42 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v41, v65, 2);
    v45 = objc_msgSend_componentsJoinedByString_(v42, v43, @"#", v44);
  }

  v48 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v46, v45, v47);
  v52 = objc_msgSend_scheme(v48, v49, v50, v51);
  v56 = objc_msgSend_length(v52, v53, v54, v55);

  if (!v56)
  {
    v59 = objc_msgSend_stringByAppendingString_(@"http://", v57, v45, v58);

    v62 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v60, v59, v61);

    v45 = v59;
    v48 = v62;
  }

  v63 = *MEMORY[0x277D85DE8];

  return v48;
}

uint64_t sub_276633000(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.sos.pb.cc", a4);
  TSCKSOS::FixCorruptedDataCommandArchive::FixCorruptedDataCommandArchive(&TSCKSOS::_FixCorruptedDataCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCKSOS::_FixCorruptedDataCommandArchive_default_instance_);
}

uint64_t sub_276633070(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.sos.pb.cc", a4);
  TSCKSOS::RemoveAuthorIdentifiersCommandArchive::RemoveAuthorIdentifiersCommandArchive(&TSCKSOS::_RemoveAuthorIdentifiersCommandArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSCKSOS::_RemoveAuthorIdentifiersCommandArchive_default_instance_);
}

uint64_t sub_2766330E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCKArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812FAC60 = v4;
  TSCKSOS::_ResetActivityStreamCommandArchive_default_instance_ = &unk_2885724B0;
  if (atomic_load_explicit(scc_info_ResetActivityStreamCommandArchive_TSCKArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FAC70 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSCKSOS::_ResetActivityStreamCommandArchive_default_instance_);
}

TSK::CommandArchive *TSCKSOS::FixCorruptedDataCommandArchive::clear_super(TSCKSOS::FixCorruptedDataCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCKSOS::FixCorruptedDataCommandArchive *TSCKSOS::FixCorruptedDataCommandArchive::FixCorruptedDataCommandArchive(TSCKSOS::FixCorruptedDataCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288572350;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_FixCorruptedDataCommandArchive_TSCKArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0;
  *(this + 6) = 0;
  return this;
}

TSCKSOS::FixCorruptedDataCommandArchive *TSCKSOS::FixCorruptedDataCommandArchive::FixCorruptedDataCommandArchive(TSCKSOS::FixCorruptedDataCommandArchive *this, const TSCKSOS::FixCorruptedDataCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288572350;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27662D7D0(this + 1, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v5;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_27662D2A0(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 56) = *(a2 + 56);
  return this;
}

void sub_27663338C(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
  sub_27662D62C((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCKSOS::FixCorruptedDataCommandArchive::~FixCorruptedDataCommandArchive(TSCKSOS::FixCorruptedDataCommandArchive *this)
{
  if (this != &TSCKSOS::_FixCorruptedDataCommandArchive_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x277C98FA0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
  }

  sub_2765F8538(this + 1);
  sub_27662D62C(this + 3);
}

{
  TSCKSOS::FixCorruptedDataCommandArchive::~FixCorruptedDataCommandArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCKSOS::FixCorruptedDataCommandArchive::default_instance(TSCKSOS::FixCorruptedDataCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_FixCorruptedDataCommandArchive_TSCKArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCKSOS::_FixCorruptedDataCommandArchive_default_instance_;
}

uint64_t *TSCKSOS::FixCorruptedDataCommandArchive::Clear(TSK::CommandArchive **this)
{
  result = sub_27662D254((this + 3));
  if (this[2])
  {
    result = TSK::CommandArchive::Clear(this[6]);
  }

  v4 = *(this + 8);
  v3 = (this + 1);
  v3[48] = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return result;
}

google::protobuf::internal *TSCKSOS::FixCorruptedDataCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v35) & 1) == 0)
  {
    while (1)
    {
      v8 = (v35 + 1);
      v9 = *v35;
      if ((*v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v10 - 128));
      v35 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_51;
      }

      v8 = TagFallback;
      v9 = v32;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 != 3)
      {
        if (v11 != 2)
        {
          if (v11 == 1 && v9 == 10)
          {
            *(a1 + 16) |= 1u;
            v27 = *(a1 + 48);
            if (!v27)
            {
              v28 = *(a1 + 8);
              if (v28)
              {
                v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
              }

              v29 = MEMORY[0x277C99420](v28);
              LODWORD(v27) = v29;
              *(a1 + 48) = v29;
              v8 = v35;
            }

            v14 = sub_276635B50(a3, v27, v8);
          }

          else
          {
LABEL_13:
            if (v9)
            {
              v13 = (v9 & 7) == 4;
            }

            else
            {
              v13 = 1;
            }

            if (v13)
            {
              *(a3 + 80) = v9 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_27662D0DC((a1 + 8));
            }

            v14 = google::protobuf::internal::UnknownFieldParse();
          }

          v35 = v14;
          if (!v14)
          {
            goto LABEL_51;
          }

          goto LABEL_44;
        }

        if (v9 != 18)
        {
          goto LABEL_13;
        }

        v15 = v8 - 1;
        while (2)
        {
          v35 = (v15 + 1);
          v16 = *(a1 + 40);
          if (v16)
          {
            v17 = *(a1 + 32);
            v18 = *v16;
            if (v17 < *v16)
            {
              *(a1 + 32) = v17 + 1;
              v19 = *&v16[2 * v17 + 2];
              goto LABEL_29;
            }

            if (v18 == *(a1 + 36))
            {
LABEL_27:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v16 = *(a1 + 40);
              v18 = *v16;
            }

            *v16 = v18 + 1;
            v21 = sub_27662CC78(*(a1 + 24));
            v22 = *(a1 + 32);
            v23 = *(a1 + 40) + 8 * v22;
            *(a1 + 32) = v22 + 1;
            *(v23 + 8) = v21;
LABEL_29:
            v15 = google::protobuf::internal::InlineGreedyStringParser();
            v35 = v15;
            if (!v15)
            {
              goto LABEL_51;
            }

            if (*a3 <= v15 || *v15 != 18)
            {
              goto LABEL_44;
            }

            continue;
          }

          break;
        }

        v20 = *(a1 + 36);
        goto LABEL_27;
      }

      if (v9 != 24)
      {
        goto LABEL_13;
      }

      v6 |= 2u;
      v25 = (v8 + 1);
      v24 = *v8;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v26 = *v25;
      v24 = (v26 << 7) + v24 - 128;
      if ((v26 & 0x80000000) == 0)
      {
        v25 = (v8 + 2);
LABEL_37:
        v35 = v25;
        *(a1 + 56) = v24 != 0;
        goto LABEL_44;
      }

      v33 = google::protobuf::internal::VarintParseSlow64(v8, v24);
      v35 = v33;
      *(a1 + 56) = v34 != 0;
      if (!v33)
      {
LABEL_51:
        v35 = 0;
        goto LABEL_2;
      }

LABEL_44:
      v30 = *(a3 + 92);
      if (sub_27662CC00(a3, &v35))
      {
        goto LABEL_2;
      }
    }

    v8 = (v35 + 2);
LABEL_6:
    v35 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v35;
}

unsigned __int8 *TSCKSOS::FixCorruptedDataCommandArchive::_InternalSerialize(TSCKSOS::FixCorruptedDataCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *v4 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(this + 8);
  if (v13 >= 1)
  {
    v14 = 8;
    do
    {
      v4 = sub_27660B498(a3, 2, *(*(this + 5) + v14), v4);
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 56);
    *v4 = 24;
    v4[1] = v15;
    v4 += 2;
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSCKSOS::FixCorruptedDataCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[6]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  if (v4 >= 1)
  {
    v6 = (this[5] + 8);
    do
    {
      v7 = *v6++;
      v8 = *(v7 + 23);
      v9 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v9 = v8;
      }

      v5 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      --v4;
    }

    while (v4);
  }

  v10 = this[2] & 2;
  v11 = v5 + v10;
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v11, this + 20);
  }

  else
  {
    *(this + 5) = v11;
    return v5 + v10;
  }
}

uint64_t TSCKSOS::FixCorruptedDataCommandArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCKSOS::FixCorruptedDataCommandArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCKSOS::FixCorruptedDataCommandArchive::MergeFrom(uint64_t this, const TSCKSOS::FixCorruptedDataCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27662D7D0((v3 + 24), v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v9 = *(v3 + 32) + v5;
    *(v3 + 32) = v9;
    v10 = *(v3 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 4);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      *(v3 + 16) |= 1u;
      v12 = *(v3 + 48);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C99420](v13);
        *(v3 + 48) = v12;
      }

      if (*(a2 + 6))
      {
        v14 = *(a2 + 6);
      }

      else
      {
        v14 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v12, v14);
    }

    if ((v11 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 56);
    }

    *(v3 + 16) |= v11;
  }

  return this;
}

TSK::CommandArchive **TSCKSOS::FixCorruptedDataCommandArchive::CopyFrom(TSK::CommandArchive **result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCKSOS::FixCorruptedDataCommandArchive::Clear(result);

    return TSCKSOS::FixCorruptedDataCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

TSK::CommandArchive **TSCKSOS::FixCorruptedDataCommandArchive::CopyFrom(TSK::CommandArchive **this, TSK::CommandArchive **a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCKSOS::FixCorruptedDataCommandArchive::Clear(this);

    return TSCKSOS::FixCorruptedDataCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCKSOS::FixCorruptedDataCommandArchive::IsInitialized(TSK::CommandArchive **this)
{
  if (this[2])
  {
    return TSK::CommandArchive::IsInitialized(this[6]);
  }

  else
  {
    return 0;
  }
}

__n128 TSCKSOS::FixCorruptedDataCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2765F8BC4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  LOBYTE(v8) = this[3].n128_u8[8];
  this[3].n128_u8[8] = a2[3].n128_u8[8];
  a2[3].n128_u8[8] = v8;
  return result;
}

uint64_t TSCKSOS::FixCorruptedDataCommandArchive::GetMetadata(TSCKSOS::FixCorruptedDataCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = *off_2812F9DA0;
  v2 = off_2812F9DA0[1];
  return result;
}

TSK::CommandArchive *TSCKSOS::RemoveAuthorIdentifiersCommandArchive::clear_super(TSCKSOS::RemoveAuthorIdentifiersCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSCKSOS::RemoveAuthorIdentifiersCommandArchive::clear_author_identifiers(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSCKSOS::RemoveAuthorIdentifiersCommandArchive *TSCKSOS::RemoveAuthorIdentifiersCommandArchive::RemoveAuthorIdentifiersCommandArchive(TSCKSOS::RemoveAuthorIdentifiersCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288572400;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_RemoveAuthorIdentifiersCommandArchive_TSCKArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0;
  *(this + 6) = 0;
  return this;
}

TSCKSOS::RemoveAuthorIdentifiersCommandArchive *TSCKSOS::RemoveAuthorIdentifiersCommandArchive::RemoveAuthorIdentifiersCommandArchive(TSCKSOS::RemoveAuthorIdentifiersCommandArchive *this, const TSCKSOS::RemoveAuthorIdentifiersCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288572400;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27662E504(this + 24, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v5;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_27662D2A0(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 56) = *(a2 + 56);
  return this;
}

void sub_276633FA8(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
  sub_27662E180((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCKSOS::RemoveAuthorIdentifiersCommandArchive::~RemoveAuthorIdentifiersCommandArchive(TSCKSOS::RemoveAuthorIdentifiersCommandArchive *this)
{
  if (this != &TSCKSOS::_RemoveAuthorIdentifiersCommandArchive_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x277C98FA0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
  }

  sub_2765F8538(this + 1);
  sub_27662E180(this + 3);
}

{
  TSCKSOS::RemoveAuthorIdentifiersCommandArchive::~RemoveAuthorIdentifiersCommandArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCKSOS::RemoveAuthorIdentifiersCommandArchive::default_instance(TSCKSOS::RemoveAuthorIdentifiersCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_RemoveAuthorIdentifiersCommandArchive_TSCKArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCKSOS::_RemoveAuthorIdentifiersCommandArchive_default_instance_;
}

uint64_t *TSCKSOS::RemoveAuthorIdentifiersCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSK::CommandArchive::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_27662D2EC(v5);
  }

  return this;
}

google::protobuf::internal *TSCKSOS::RemoveAuthorIdentifiersCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v36) & 1) == 0)
  {
    while (1)
    {
      v8 = (v36 + 1);
      v9 = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v10 - 128));
      v36 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_52;
      }

      v8 = TagFallback;
      v9 = v33;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 != 3)
      {
        if (v11 != 2)
        {
          if (v11 == 1 && v9 == 10)
          {
            *(a1 + 16) |= 1u;
            v28 = *(a1 + 48);
            if (!v28)
            {
              v29 = *(a1 + 8);
              if (v29)
              {
                v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
              }

              v30 = MEMORY[0x277C99420](v29);
              LODWORD(v28) = v30;
              *(a1 + 48) = v30;
              v8 = v36;
            }

            v14 = sub_276635B50(a3, v28, v8);
          }

          else
          {
LABEL_13:
            if (v9)
            {
              v13 = (v9 & 7) == 4;
            }

            else
            {
              v13 = 1;
            }

            if (v13)
            {
              *(a3 + 80) = v9 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_27662D0DC((a1 + 8));
            }

            v14 = google::protobuf::internal::UnknownFieldParse();
          }

          v36 = v14;
          if (!v14)
          {
            goto LABEL_52;
          }

          goto LABEL_45;
        }

        if (v9 != 18)
        {
          goto LABEL_13;
        }

        v15 = v8 - 1;
        while (2)
        {
          v16 = (v15 + 1);
          v36 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
            v18 = *(a1 + 36);
            goto LABEL_24;
          }

          v24 = *(a1 + 32);
          v19 = *v17;
          if (v24 >= *v17)
          {
            if (v19 == *(a1 + 36))
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v17 = *(a1 + 40);
              v19 = *v17;
            }

            *v17 = v19 + 1;
            v20 = MEMORY[0x277C994B0](*(a1 + 24));
            LODWORD(v21) = v20;
            v22 = *(a1 + 32);
            v23 = *(a1 + 40) + 8 * v22;
            *(a1 + 32) = v22 + 1;
            *(v23 + 8) = v20;
            v16 = v36;
          }

          else
          {
            *(a1 + 32) = v24 + 1;
            v21 = *&v17[2 * v24 + 2];
          }

          v15 = sub_2766359B0(a3, v21, v16);
          v36 = v15;
          if (!v15)
          {
            goto LABEL_52;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_45;
          }

          continue;
        }
      }

      if (v9 != 24)
      {
        goto LABEL_13;
      }

      v6 |= 2u;
      v26 = (v8 + 1);
      v25 = *v8;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_38;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = (v8 + 2);
LABEL_38:
        v36 = v26;
        *(a1 + 56) = v25 != 0;
        goto LABEL_45;
      }

      v34 = google::protobuf::internal::VarintParseSlow64(v8, v25);
      v36 = v34;
      *(a1 + 56) = v35 != 0;
      if (!v34)
      {
LABEL_52:
        v36 = 0;
        goto LABEL_2;
      }

LABEL_45:
      v31 = *(a3 + 92);
      if (sub_27662CC00(a3, &v36))
      {
        goto LABEL_2;
      }
    }

    v8 = (v36 + 2);
LABEL_6:
    v36 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v36;
}

unsigned __int8 *TSCKSOS::RemoveAuthorIdentifiersCommandArchive::_InternalSerialize(TSCKSOS::RemoveAuthorIdentifiersCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 8);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 56);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCKSOS::RemoveAuthorIdentifiersCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[6]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = this[5];
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSP::UUID::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = this[2] & 2;
  v12 = v5 + v11;
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v12, this + 20);
  }

  else
  {
    *(this + 5) = v12;
    return v5 + v11;
  }
}

uint64_t TSCKSOS::RemoveAuthorIdentifiersCommandArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCKSOS::RemoveAuthorIdentifiersCommandArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCKSOS::RemoveAuthorIdentifiersCommandArchive::MergeFrom(uint64_t this, const TSCKSOS::RemoveAuthorIdentifiersCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27662E504(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v9 = *(v3 + 32) + v5;
    *(v3 + 32) = v9;
    v10 = *(v3 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 4);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      *(v3 + 16) |= 1u;
      v12 = *(v3 + 48);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C99420](v13);
        *(v3 + 48) = v12;
      }

      if (*(a2 + 6))
      {
        v14 = *(a2 + 6);
      }

      else
      {
        v14 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v12, v14);
    }

    if ((v11 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 56);
    }

    *(v3 + 16) |= v11;
  }

  return this;
}

uint64_t *TSCKSOS::RemoveAuthorIdentifiersCommandArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCKSOS::RemoveAuthorIdentifiersCommandArchive::Clear(result);

    return TSCKSOS::RemoveAuthorIdentifiersCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCKSOS::RemoveAuthorIdentifiersCommandArchive::CopyFrom(uint64_t *this, const TSCKSOS::RemoveAuthorIdentifiersCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCKSOS::RemoveAuthorIdentifiersCommandArchive::Clear(this);

    return TSCKSOS::RemoveAuthorIdentifiersCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCKSOS::RemoveAuthorIdentifiersCommandArchive::IsInitialized(TSCKSOS::RemoveAuthorIdentifiersCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCKSOS::RemoveAuthorIdentifiersCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2765F8BC4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  LOBYTE(v8) = this[3].n128_u8[8];
  this[3].n128_u8[8] = a2[3].n128_u8[8];
  a2[3].n128_u8[8] = v8;
  return result;
}

uint64_t TSCKSOS::RemoveAuthorIdentifiersCommandArchive::GetMetadata(TSCKSOS::RemoveAuthorIdentifiersCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9DA0[2];
  v2 = off_2812F9DA0[3];
  return result;
}

TSK::CommandArchive *TSCKSOS::ResetActivityStreamCommandArchive::clear_super(TSCKSOS::ResetActivityStreamCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCKSOS::ResetActivityStreamCommandArchive *TSCKSOS::ResetActivityStreamCommandArchive::ResetActivityStreamCommandArchive(TSCKSOS::ResetActivityStreamCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885724B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ResetActivityStreamCommandArchive_TSCKArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885724B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ResetActivityStreamCommandArchive_TSCKArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCKSOS::ResetActivityStreamCommandArchive *TSCKSOS::ResetActivityStreamCommandArchive::ResetActivityStreamCommandArchive(TSCKSOS::ResetActivityStreamCommandArchive *this, const TSCKSOS::ResetActivityStreamCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885724B0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSCKSOS::ResetActivityStreamCommandArchive::~ResetActivityStreamCommandArchive(TSCKSOS::ResetActivityStreamCommandArchive *this)
{
  if (this != &TSCKSOS::_ResetActivityStreamCommandArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C98FA0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
  }

  sub_2765F8538(this + 1);
}

{
  TSCKSOS::ResetActivityStreamCommandArchive::~ResetActivityStreamCommandArchive(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCKSOS::ResetActivityStreamCommandArchive::default_instance(TSCKSOS::ResetActivityStreamCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ResetActivityStreamCommandArchive_TSCKArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCKSOS::_ResetActivityStreamCommandArchive_default_instance_;
}

uint64_t *TSCKSOS::ResetActivityStreamCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSK::CommandArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCKSOS::ResetActivityStreamCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = *(a3 + 92);
  while ((sub_27662CC00(a3, &v18) & 1) == 0)
  {
    v6 = (v18 + 1);
    v7 = *v18;
    if (*v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v16;
        goto LABEL_7;
      }

      v6 = (v18 + 2);
    }

    v18 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C99420](v12);
        LODWORD(v11) = v13;
        *(a1 + 24) = v13;
        v6 = v18;
      }

      v10 = sub_276635B50(a3, v11, v6);
    }

    else
    {
      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v18;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v18 = v10;
    if (!v10)
    {
      return 0;
    }

    v14 = *(a3 + 92);
  }

  return v18;
}

unsigned __int8 *TSCKSOS::ResetActivityStreamCommandArchive::_InternalSerialize(TSCKSOS::ResetActivityStreamCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCKSOS::ResetActivityStreamCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSCKSOS::ResetActivityStreamCommandArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCKSOS::ResetActivityStreamCommandArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCKSOS::ResetActivityStreamCommandArchive::MergeFrom(uint64_t this, const TSCKSOS::ResetActivityStreamCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C99420](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80718];
    }

    return TSK::CommandArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSCKSOS::ResetActivityStreamCommandArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCKSOS::ResetActivityStreamCommandArchive::Clear(result);

    return TSCKSOS::ResetActivityStreamCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCKSOS::ResetActivityStreamCommandArchive::CopyFrom(uint64_t *this, const TSCKSOS::ResetActivityStreamCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCKSOS::ResetActivityStreamCommandArchive::Clear(this);

    return TSCKSOS::ResetActivityStreamCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCKSOS::ResetActivityStreamCommandArchive::IsInitialized(TSK::CommandArchive **this)
{
  if (this[2])
  {
    return TSK::CommandArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCKSOS::ResetActivityStreamCommandArchive::InternalSwap(TSCKSOS::ResetActivityStreamCommandArchive *this, TSCKSOS::ResetActivityStreamCommandArchive *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TSCKSOS::ResetActivityStreamCommandArchive::GetMetadata(TSCKSOS::ResetActivityStreamCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9DA0[4];
  v2 = off_2812F9DA0[5];
  return result;
}

TSCKSOS::FixCorruptedDataCommandArchive *sub_2766352E4(google::protobuf::Arena *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    operator new();
  }

  v4 = sub_27663550C(a1, 1, a3);
  TSCKSOS::FixCorruptedDataCommandArchive::FixCorruptedDataCommandArchive(v4, a1);
  return v4;
}

TSCKSOS::RemoveAuthorIdentifiersCommandArchive *sub_276635370(google::protobuf::Arena *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    operator new();
  }

  v4 = sub_276635598(a1, 1, a3);
  TSCKSOS::RemoveAuthorIdentifiersCommandArchive::RemoveAuthorIdentifiersCommandArchive(v4, a1);
  return v4;
}

void *sub_2766353FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276635624(a1, a2, a3);
}

uint64_t sub_27663550C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    sub_276637EB4(a1, a2, a3);
    if (v3)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCKSOS::FixCorruptedDataCommandArchive::~FixCorruptedDataCommandArchive);
}

uint64_t sub_276635598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    sub_276637EE0(a1, a2, a3);
    if (v3)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCKSOS::RemoveAuthorIdentifiersCommandArchive::~RemoveAuthorIdentifiersCommandArchive);
}

void *sub_276635624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_276635698(a1, 1, a3);
  *v4 = &unk_2885724B0;
  v4[1] = a1;
  v4[2] = 0;
  if (atomic_load_explicit(scc_info_ResetActivityStreamCommandArchive_TSCKArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v4[3] = 0;
  return v4;
}

uint64_t sub_276635698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a1 + 24))
  {
    sub_276637F0C(a1, a2, a3);
    if (v3)
    {
LABEL_3:

      JUMPOUT(0x277C99500);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCKSOS::ResetActivityStreamCommandArchive::~ResetActivityStreamCommandArchive);
}

uint64_t sub_276635740(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::LargeArray::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276635810(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::LargeObjectArraySegment::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2766358E0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Reference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_2766359B0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUID::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276635A80(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::CollaborationCommandHistory_ItemList::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276635B50(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::CommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276635C20(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Color::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276635CF0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUIDPath::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276635DC0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::IdOperationArgs::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_276635E90(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::OperationTransformer::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276635F60(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::Operation::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276636030(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Date::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_276636100(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::CollaborationDocumentSessionState_AcknowledgementObserverEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2766361D0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::CollaborationAppliedCommandDocumentRevisionMapping::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2766362A0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::LargeArraySegment::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276636370(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::OperationStorageEntry::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276636440(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::IndexSet::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_276636510(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::LargeObjectArray::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2766365E0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::AssetUploadStatusCommandArchive_AssetUploadStatusInfo::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2766366B0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::ActivityStreamTransformationStateArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276636780(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::ActivityStreamActivityCounterArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276636850(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::ActivityNavigationInfoArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276636920(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::CollaboratorCursorArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2766369F0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::ActivityCursorCollectionArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276636AC0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276636B90(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::ActivityAuthorCacheArchive_PublicIDCache::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276636C60(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::ActivityAuthorCacheArchive_IndexCache::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276636D30(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::ActivityAuthorCacheArchive_FirstJoinCache::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276636E00(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::ActivityNotificationParticipantCacheArchive_UniqueIdentifierAndAttempts::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276636ED0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::ActivityStreamActivityCounterArchive_ActionTypeCounter::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276636FA0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::ActivityStreamActivityCounterArchive_CursorTypeCounter::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276637070(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCK::ActivityStreamRemovedAuthorAuditorPendingStateArchive_DateToAuditAndType::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

void sub_276637140(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(v1 - 8);
  v2 = (v1 - 8);
  if (!v3)
  {
    operator delete(v2);
  }
}

void sub_276637154(int *a1, void *a2, int *a3, void *a4)
{
  if (*a1 >= 1 && !*(*a2 - 8))
  {
    operator delete((*a2 - 8));
  }

  if (*a3 >= 1)
  {
    v6 = (*a4 - 8);
    if (!*v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_2766371C8(uint64_t *a1)
{
  v1 = sub_276631918(a1);
  if (v2)
  {
    v3 = sub_27663190C(v2);
  }

  else
  {
    v3 = sub_27662D0DC(v1);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v3);
}

uint64_t sub_276637204(uint64_t *a1)
{
  v1 = sub_276631918(a1);
  if (v2)
  {
    v3 = sub_27663190C(v2);
  }

  else
  {
    v3 = sub_27662D0DC(v1);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v3);
}

uint64_t sub_276637240(uint64_t *a1)
{
  v1 = sub_276631918(a1);
  if (v2)
  {
    v3 = sub_27663190C(v2);
  }

  else
  {
    v3 = sub_27662D0DC(v1);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v3);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}