@interface TPSExperiment
- (BOOL)updateCampIfNeeded;
- (BOOL)updateWithExperimentDictionary:(id)a3;
- (TPSExperiment)init;
- (TPSExperiment)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSExperiment

- (TPSExperiment)init
{
  v3.receiver = self;
  v3.super_class = TPSExperiment;
  result = [(TPSExperiment *)&v3 init];
  if (result)
  {
    result->_holdoutAllocation = 0.0;
    result->_camp = 0;
    result->_identifier = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (TPSExperiment)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TPSExperiment;
  v5 = [(TPSExperiment *)&v14 init];
  if (v5)
  {
    v5->_identifier = [v4 decodeIntegerForKey:@"id"];
    [v4 decodeDoubleForKey:@"holdoutAllocation"];
    v5->_holdoutAllocation = v6;
    v7 = [v4 decodeIntegerForKey:@"camp"];
    if (v7 > 2)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v5->_camp = v8;
    v9 = +[TPSLogger data];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      identifier = v5->_identifier;
      camp = v5->_camp;
      *buf = 134218240;
      v16 = identifier;
      v17 = 2048;
      v18 = camp;
      _os_log_impl(&dword_1C00A7000, v9, OS_LOG_TYPE_DEFAULT, "Current experiment %zd, user camp %zd", buf, 0x16u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeInteger:identifier forKey:@"id"];
  [v5 encodeInteger:self->_camp forKey:@"camp"];
  [v5 encodeDouble:@"holdoutAllocation" forKey:self->_holdoutAllocation];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [v4 setIdentifier:self->_identifier];
  [v4 setCamp:self->_camp];
  [v4 setHoldoutAllocation:self->_holdoutAllocation];
  return v4;
}

- (BOOL)updateWithExperimentDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 TPSSafeIntegerForKey:@"id"];
    if (self->_identifier != v6)
    {
      v7 = v6;
      self->_identifier = v6;
      [v5 TPSSafeDoubleForKey:@"holdoutAllocation"];
      if (v8 > 1.0 || v8 < 0.0)
      {
        v8 = 0.0;
      }

      self->_holdoutAllocation = v8;
      v10 = +[TPSLogger data];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        holdoutAllocation = self->_holdoutAllocation;
        v16 = 134218240;
        v17 = v7;
        v18 = 2048;
        v19 = holdoutAllocation;
        _os_log_impl(&dword_1C00A7000, v10, OS_LOG_TYPE_DEFAULT, "Update experiment to identifier %zd, holdoutAllocation %.2f", &v16, 0x16u);
      }

      if (self->_camp)
      {
        self->_camp = 1;
        v12 = +[TPSLogger data];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_1C00A7000, v12, OS_LOG_TYPE_DEFAULT, "Experiment changes after camp has been assigned, rolling user back to all content group", &v16, 2u);
        }
      }

      goto LABEL_17;
    }
  }

  else if (self->_camp != 1)
  {
    self->_holdoutAllocation = 0.0;
    self->_camp = 1;
LABEL_17:
    [(TPSExperiment *)self updateCampIfNeeded];
    v13 = 1;
    goto LABEL_18;
  }

  v13 = 0;
LABEL_18:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)updateCampIfNeeded
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[TPSDefaultsManager holdoutGroup];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
    v6 = v5;
    if (v5 == self->_camp)
    {
      v7 = 0;
    }

    else
    {
      self->_camp = v5;
      v8 = +[TPSLogger data];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = *&v6;
        _os_log_impl(&dword_1C00A7000, v8, OS_LOG_TYPE_DEFAULT, "Camp overrode to %zd", &v15, 0xCu);
      }

      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  camp = self->_camp;
  if (!camp)
  {
    if (self->_holdoutAllocation != 0.0)
    {
      v11 = (arc4random_uniform(0x64u) + 1) / 100.0;
      if (v11 <= self->_holdoutAllocation)
      {
        v6 = 2;
      }

      v12 = +[TPSLogger data];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134218240;
        v16 = v11;
        v17 = 2048;
        v18 = v6;
        _os_log_impl(&dword_1C00A7000, v12, OS_LOG_TYPE_DEFAULT, "Experiment dice roll %.2f, user camp %zd", &v15, 0x16u);
      }
    }

    if (v6 > 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = v6;
    }

    goto LABEL_20;
  }

  if (camp >= 3)
  {
    v10 = 1;
LABEL_20:
    self->_camp = v10;
    v7 = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v7.receiver = self;
  v7.super_class = TPSExperiment;
  v4 = [(TPSExperiment *)&v7 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"%@ = %zd\n", @"id", self->_identifier];
  [v5 appendFormat:@"%@ = %zd\n", @"camp", self->_camp];
  [v5 appendFormat:@"%@ = %.2f\n", @"holdoutAllocation", *&self->_holdoutAllocation];

  return v5;
}

@end