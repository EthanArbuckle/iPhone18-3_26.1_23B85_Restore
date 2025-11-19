@interface SAMicrostackshotStatistics
- (SAMicrostackshotStatistics)init;
- (id)debugDescription;
- (uint64_t)addMicro:(uint64_t)a3 task:(uint64_t)a4 thread:(uint64_t)a5 size:(uint64_t)a6 errors:;
@end

@implementation SAMicrostackshotStatistics

- (SAMicrostackshotStatistics)init
{
  v18.receiver = self;
  v18.super_class = SAMicrostackshotStatistics;
  v2 = [(SAMicrostackshotStatistics *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(SAMSTypeStats);
    total = v2->_total;
    v2->_total = v3;

    v5 = objc_alloc_init(SAMSTypeStats);
    interrupt = v2->_interrupt;
    v2->_interrupt = v5;

    v7 = objc_alloc_init(SAMSTypeStats);
    timer = v2->_timer;
    v2->_timer = v7;

    v9 = objc_alloc_init(SAMSTypeStats);
    io = v2->_io;
    v2->_io = v9;

    v11 = objc_alloc_init(SAMSTypeStats);
    pmi = v2->_pmi;
    v2->_pmi = v11;

    v13 = objc_alloc_init(SAMSTypeStats);
    macf = v2->_macf;
    v2->_macf = v13;

    v15 = objc_alloc_init(SAMSTypeStats);
    unknown_type = v2->_unknown_type;
    v2->_unknown_type = v15;
  }

  return v2;
}

- (uint64_t)addMicro:(uint64_t)a3 task:(uint64_t)a4 thread:(uint64_t)a5 size:(uint64_t)a6 errors:
{
  if (!result)
  {
    return result;
  }

  v11 = result;
  result = [(SAMSTypeStats *)*(result + 8) addTask:a3 thread:a4 size:a5 errors:a6];
  v12 = *(a2 + 24);
  if (v12)
  {
    result = [(SAMSTypeStats *)v11[2] addTask:a3 thread:a4 size:a5 errors:a6];
    v12 = *(a2 + 24);
    if ((v12 & 2) == 0)
    {
LABEL_4:
      if ((v12 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a2 + 24) & 2) == 0)
  {
    goto LABEL_4;
  }

  result = [(SAMSTypeStats *)v11[3] addTask:a3 thread:a4 size:a5 errors:a6];
  v12 = *(a2 + 24);
  if ((v12 & 8) == 0)
  {
LABEL_5:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = [(SAMSTypeStats *)v11[4] addTask:a3 thread:a4 size:a5 errors:a6];
  v12 = *(a2 + 24);
  if ((v12 & 0x10) == 0)
  {
LABEL_6:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  result = [(SAMSTypeStats *)v11[5] addTask:a3 thread:a4 size:a5 errors:a6];
  v12 = *(a2 + 24);
  if ((v12 & 0x20) != 0)
  {
LABEL_7:
    result = [(SAMSTypeStats *)v11[6] addTask:a3 thread:a4 size:a5 errors:a6];
    v12 = *(a2 + 24);
  }

LABEL_8:
  if ((v12 & 0x3B) == 0)
  {
    v13 = v11[7];

    return [(SAMSTypeStats *)v13 addTask:a3 thread:a4 size:a5 errors:a6];
  }

  return result;
}

- (id)debugDescription
{
  v3 = [(SAMSTypeStats *)self->_total bytes];
  v4 = [(SAMSTypeStats *)self->_total bytes_duplicate]+ v3;
  v5 = [(SAMSTypeStats *)self->_total bytes_out_of_order];
  v6 = [(SAMSTypeStats *)self->_total bytes_missing_load_info];
  bytes_other_data = self->_bytes_other_data;
  v67 = v4 + v5 + v6;
  v68 = bytes_other_data + self->_bytes_not_microstackshots + v67;
  v69 = MEMORY[0x1E696AEC0];
  num_microstackshots_filtered_out = self->_num_microstackshots_filtered_out;
  v64 = num_microstackshots_filtered_out;
  bytes_not_microstackshots = self->_bytes_not_microstackshots;
  v63 = [(SAMSTypeStats *)self->_total count];
  v62 = [(SAMSTypeStats *)self->_total bytes];
  v61 = [(SAMSTypeStats *)self->_total num_load_infos];
  v60 = [(SAMSTypeStats *)self->_total num_frames];
  v59 = [(SAMSTypeStats *)self->_total num_duplicate];
  v58 = [(SAMSTypeStats *)self->_total bytes_duplicate];
  v57 = [(SAMSTypeStats *)self->_total num_out_of_order];
  v56 = [(SAMSTypeStats *)self->_total bytes_out_of_order];
  v55 = [(SAMSTypeStats *)self->_total num_missing_load_info];
  v54 = [(SAMSTypeStats *)self->_total bytes_missing_load_info];
  v53 = [(SAMSTypeStats *)self->_interrupt count];
  v52 = [(SAMSTypeStats *)self->_interrupt bytes];
  v51 = [(SAMSTypeStats *)self->_interrupt num_load_infos];
  v50 = [(SAMSTypeStats *)self->_interrupt num_frames];
  v49 = [(SAMSTypeStats *)self->_interrupt num_duplicate];
  v48 = [(SAMSTypeStats *)self->_interrupt bytes_duplicate];
  v47 = [(SAMSTypeStats *)self->_interrupt num_out_of_order];
  v46 = [(SAMSTypeStats *)self->_interrupt bytes_out_of_order];
  v45 = [(SAMSTypeStats *)self->_interrupt num_missing_load_info];
  v44 = [(SAMSTypeStats *)self->_interrupt bytes_missing_load_info];
  v43 = [(SAMSTypeStats *)self->_timer count];
  v42 = [(SAMSTypeStats *)self->_timer bytes];
  v41 = [(SAMSTypeStats *)self->_timer num_load_infos];
  v40 = [(SAMSTypeStats *)self->_timer num_frames];
  v39 = [(SAMSTypeStats *)self->_timer num_duplicate];
  v38 = [(SAMSTypeStats *)self->_timer bytes_duplicate];
  v37 = [(SAMSTypeStats *)self->_timer num_out_of_order];
  v36 = [(SAMSTypeStats *)self->_timer bytes_out_of_order];
  v35 = [(SAMSTypeStats *)self->_timer num_missing_load_info];
  v34 = [(SAMSTypeStats *)self->_timer bytes_missing_load_info];
  v33 = [(SAMSTypeStats *)self->_io count];
  v32 = [(SAMSTypeStats *)self->_io bytes];
  v31 = [(SAMSTypeStats *)self->_io num_load_infos];
  v30 = [(SAMSTypeStats *)self->_io num_frames];
  v29 = [(SAMSTypeStats *)self->_io num_duplicate];
  v28 = [(SAMSTypeStats *)self->_io bytes_duplicate];
  v27 = [(SAMSTypeStats *)self->_io num_out_of_order];
  v26 = [(SAMSTypeStats *)self->_io bytes_out_of_order];
  v25 = [(SAMSTypeStats *)self->_io num_missing_load_info];
  v24 = [(SAMSTypeStats *)self->_io bytes_missing_load_info];
  v23 = [(SAMSTypeStats *)self->_pmi count];
  v22 = [(SAMSTypeStats *)self->_pmi bytes];
  v21 = [(SAMSTypeStats *)self->_pmi num_load_infos];
  v20 = [(SAMSTypeStats *)self->_pmi num_frames];
  v19 = [(SAMSTypeStats *)self->_pmi num_duplicate];
  v18 = [(SAMSTypeStats *)self->_pmi bytes_duplicate];
  v17 = [(SAMSTypeStats *)self->_pmi num_out_of_order];
  v16 = [(SAMSTypeStats *)self->_pmi bytes_out_of_order];
  v15 = [(SAMSTypeStats *)self->_pmi num_missing_load_info];
  v14 = [(SAMSTypeStats *)self->_pmi bytes_missing_load_info];
  v13 = [(SAMSTypeStats *)self->_macf count];
  v12 = [(SAMSTypeStats *)self->_macf bytes];
  v11 = [(SAMSTypeStats *)self->_macf num_load_infos];
  v10 = [(SAMSTypeStats *)self->_macf num_frames];
  v9 = [(SAMSTypeStats *)self->_macf num_duplicate];
  [(SAMSTypeStats *)self->_macf bytes_duplicate];
  [(SAMSTypeStats *)self->_macf num_out_of_order];
  [(SAMSTypeStats *)self->_macf bytes_out_of_order];
  [(SAMSTypeStats *)self->_macf num_missing_load_info];
  [(SAMSTypeStats *)self->_macf bytes_missing_load_info];
  [(SAMSTypeStats *)self->_unknown_type count];
  [(SAMSTypeStats *)self->_unknown_type bytes];
  [(SAMSTypeStats *)self->_unknown_type num_load_infos];
  [(SAMSTypeStats *)self->_unknown_type num_frames];
  [(SAMSTypeStats *)self->_unknown_type num_duplicate];
  [(SAMSTypeStats *)self->_unknown_type bytes_duplicate];
  [(SAMSTypeStats *)self->_unknown_type num_out_of_order];
  [(SAMSTypeStats *)self->_unknown_type bytes_out_of_order];
  [(SAMSTypeStats *)self->_unknown_type num_missing_load_info];
  [(SAMSTypeStats *)self->_unknown_type bytes_missing_load_info];
  return [v69 stringWithFormat:@"Microstackshot statistics:\n%llu bytes parsed (%llu ms, %llu non-ms, %llu invalid)\n%llu filtered out\n\ntotal     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ninterrupt count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ntimer     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nio        count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\npmi       count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nmacf      count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nunknown   count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)", v68, v67, bytes_other_data, bytes_not_microstackshots, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v47, v46, v45, v44, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v11, v10, v9];
}

@end